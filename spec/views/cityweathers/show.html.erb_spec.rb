require 'rails_helper'

RSpec.describe "cityweathers/show", type: :view do
  before(:each) do
    @cityweather = assign(:cityweather, Cityweather.create!(
      :city => "City"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/City/)
  end
end
