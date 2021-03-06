# frozen_string_literal: true

class Village < ApplicationRecord
  include GeographyType
  include Rails.application.routes.url_helpers
  require 'csv'

  belongs_to :cell,       inverse_of: :villages

  has_one    :sector,     through: :cell,     inverse_of: :villages
  has_one    :district,   through: :sector,   inverse_of: :villages
  has_one    :country,    through: :district, inverse_of: :villages

  has_many   :facilities, inverse_of: :village, dependent: :destroy

  has_many   :reports,    as: :reportable, inverse_of: :reportable
  has_many   :plans,      as: :planable,   inverse_of: :planable

  validates_presence_of :name, :cell_id
  validates_uniqueness_of :gis_code, allow_blank: true

  after_save :update_hierarchy, if: -> { saved_change_to_cell_id? }
  scope :hidden, -> { where(hidden: true) }
  scope :visible, -> { where(hidden: false) }

  # record was hidden, but is now visible
  after_save :toggle_relations, if: -> { saved_change_to_hidden? && !hidden? }

  def cells
    # Report and Plan want to be able to call any geography
    cell&.parent&.cells
  end

  def child_class
    'Facility'
  end

  def districts
    # Report and Plan want to be able to call any geography
    district&.parent&.districts
  end

  def facility
    # Report and Plan want to be able to call any geography
    nil
  end

  def self.import(filepath)
    ActiveRecord::Base.logger.silence do
      @counter = 0
      @first_count = Village.all.size

      CSV.foreach(filepath, headers: true) do |row|
        @counter += 1
        record = Village.find_or_create_by(name: row['name'], gis_code: row['gis_code'])

        next if record.persisted?

        # drop the last 2 digits off the record's GIS code to get the parent's GIS code
        code = record.gis_code.to_s[0...record.gis_code.to_s.length - 2].to_i

        record.cell = Cell.where(gis_code: code).first
        record.hidden = true

        next if record.save

        logger.warn "Failed to save: #{row}; #{record}: #{record.errors.messages}"
      end
    end

    @last_count = Village.all.size

    puts "#{@counter} rows processed"
    puts "#{@last_count - @first_count} records created."
  end

  def parent
    cell
  end

  def pop_hh
    pop = population.present? ? ActiveSupport::NumberHelper.number_to_delimited(population, delimiter: ',') : '-'
    hh = households.present? ? ActiveSupport::NumberHelper.number_to_delimited(households, delimiter: ',') : '-'
    "#{pop} / #{hh}"
  end

  def related_plans
    Plan.where(planable_type: 'Village', planable_id: id)
        .or(Plan.where(planable_type: 'Facility', planable_id: facilities.pluck(:id)))
  end

  def related_reports
    Report.where(reportable_type: 'Village', reportable_id: id)
          .or(Report.where(reportable_type: 'Facility', reportable_id: facilities.pluck(:id)))
  end

  def related_stories
    Story.joins(:report).where("reports.reportable_type = 'Village' AND reports.reportable_id = ?", id)
         .or(Story.joins(:report).where("reports.reportable_type = 'Facility' AND reports.reportable_id IN (?)", facilities.pluck(:id)))
  end

  def sectors
    # Report and Plan want to be able to call any geography
    sector&.parent&.sectors
  end

  def village
    self
  end

  def villages
    # Report and Plan want to be able to call any geography
    parent&.villages
  end

  def update_hierarchy(cascade: false)
    update_column(:hierarchy, cell.hierarchy << { parent_name: cell.name, parent_type: cell.class.to_s, link: cell_path(cell) })

    return unless cascade || saved_change_to_cell_id?

    reload.facilities.each(&:update_hierarchy)
  end

  private

  def toggle_relations
    # ensure all ancestors are un-hidden
    cell.update_column(:hidden, false)
    sector.update_column(:hidden, false)
    district.update_column(:hidden, false)
    country.update_column(:hidden, false)
  end
end
