# frozen_string_literal: true

FactoryBot.define do
  factory :technology do
    name { 'FactoryTechnology' }
    short_name { 'FT100' }
    default_impact { 1 }
    report_worthy { true }
    agreement_required { false }
    scale { 'Family' }
    direct_cost { 1_000 }
    direct_cost_currency { 'USD' }
    indirect_cost { 200 }
    indirect_cost_currency { 'USD' }
    us_cost { 50 }
    us_cost_currency { 'USD' }
    local_cost { 150 }
    local_cost_currency { 'USD' }
  end

  factory :technology_family, class: Technology do
    name { 'TechFamily' }
    short_name { 'TF' }
    default_impact { 1 }
    scale { 'Family' }
    direct_cost { 1000 }
    indirect_cost { 1500 }
    us_cost { 800 }
    local_cost { 200 }
  end

  factory :technology_community, class: Technology do
    name { 'TechCommunity' }
    short_name { 'TC' }
    default_impact { 1 }
    scale { 'Community' }
    agreement_required { true }
    direct_cost { 1000 }
    indirect_cost { 1500 }
    us_cost { 800 }
    local_cost { 200 }
  end

  factory :technology_engagement, class: Technology do
    name { 'TechEngagement' }
    short_name { 'TE' }
    default_impact { 1 }
    scale { 'Family' }
    agreement_required { false }
    is_engagement { true }
  end
end
