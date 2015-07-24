require 'rails_helper'

RSpec.describe "postcodeweathers/show", type: :view do
  before(:each) do
    @postcodeweather = assign(:postcodeweather, Postcodeweather.create!(
      :postcode => "Postcode"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Postcode/)
  end
end
