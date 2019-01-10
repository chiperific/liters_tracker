# frozen_string_literal: true

require 'rails_helper'

RSpec.describe "cells/index", type: :view do
  before(:each) do
    assign(:cells, [
      Cell.create!(
        :name => "Name",
        :gis_id => 2,
        :latitude => 3.5,
        :longitude => 4.5,
        :population => 5,
        :households => 6
      ),
      Cell.create!(
        :name => "Name",
        :gis_id => 2,
        :latitude => 3.5,
        :longitude => 4.5,
        :population => 5,
        :households => 6
      )
    ])
  end

  it "renders a list of cells" do
    render
    assert_select "tr>td", :text => "Name".to_s, :count => 2
    assert_select "tr>td", :text => 2.to_s, :count => 2
    assert_select "tr>td", :text => 3.5.to_s, :count => 2
    assert_select "tr>td", :text => 4.5.to_s, :count => 2
    assert_select "tr>td", :text => 5.to_s, :count => 2
    assert_select "tr>td", :text => 6.to_s, :count => 2
  end
end
