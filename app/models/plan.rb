# frozen_string_literal: true

class Plan < ApplicationRecord
  belongs_to :contract,   inverse_of: :plans
  belongs_to :technology, inverse_of: :plans
  serialize :model_gid

  validates_presence_of :contract_id, :technology_id, :model_gid, :goal

  scope :current,         -> { where(contract_id: Contract.current) }
  scope :only_districts,  -> { where('model_gid ILIKE ?', '%/District/%') }
  scope :only_sectors,    -> { where('model_gid ILIKE ?', '%/Sector/%') }
  scope :only_cells,      -> { where('model_gid ILIKE ?', '%/Cell/%') }
  scope :only_villages,   -> { where('model_gid ILIKE ?', '%/Village/%') }
  scope :only_facilities, -> { where('model_gid ILIKE ?', '%/Facility/%') }

  # scope :between, ->(sdate, edate) { joins(:contract).where('contracts.start_date BETWEEN ? AND ?', sdate, edate).order('contracts.end_date') }
  scope :between, ->(from, to) { joins(:contract).where('contracts.end_date >= ? AND contracts.start_date <= ?', from, to) }

  def self.related_to(record)
    where(model_gid: record.to_global_id.to_s)
  end

  def self.related_to_sector(sector)
    plan_ids = []
    plan_ids << related_to(sector).pluck(:id)
    sector.cells.each { |cell| plan_ids << related_to(cell).pluck(:id) }
    sector.villages.each { |village| plan_ids << related_to(village).pluck(:id) }
    sector.facilities.each { |facility| plan_ids << related_to(facility).pluck(:id) }

    where(id: plan_ids.flatten!)
  end

  def self.related_to_district(district)
    plan_ids = []
    plan_ids << related_to(district).pluck(:id)
    district.sectors.each { |sector| plan_ids << related_to_sector(sector) }

    where(id: plan_ids.flatten!)
  end

  def model
    GlobalID::Locator.locate model_gid
  end

  def district
    model.district
  end

  def sector
    return model if model.class == Sector

    model.sector
  end

  def cell
    return model if model.class == Cell

    model.cell
  end

  def village
    return model if model.class == Village

    model.village
  end
end
