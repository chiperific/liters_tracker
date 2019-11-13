# frozen_string_literal: true

class Village < ApplicationRecord
  include GeographyType

  belongs_to :cell,       inverse_of: :villages

  has_one    :sector,     through: :cell,     inverse_of: :villages
  has_one    :district,   through: :sector,   inverse_of: :villages
  has_one    :country,    through: :district, inverse_of: :villages

  has_many   :facilities, inverse_of: :village, dependent: :destroy

  has_many   :reports,    as: :reportable, inverse_of: :reportable
  has_many   :plans,      as: :planable,   inverse_of: :planable

  validates_presence_of :name, :cell_id
  validates_uniqueness_of :gis_code, allow_blank: true

  def related_plans
    Plan.where(planable_type: 'Village', planable_id: id)
        .or(Plan.where(planable_type: 'Facility', planable_id: facilities.pluck(:id)))
  end

  def related_reports
    Report.where(reportable_type: 'Village', reportable_id: id)
          .or(Report.where(reportable_type: 'Facility', reportable_id: facilities.pluck(:id)))
  end

  def pop_hh
    pop = population.present? ? ActiveSupport::NumberHelper.number_to_delimited(population, delimiter: ',') : '-'
    hh = households.present? ? ActiveSupport::NumberHelper.number_to_delimited(households, delimiter: ',') : '-'
    "#{pop} / #{hh}"
  end
end
