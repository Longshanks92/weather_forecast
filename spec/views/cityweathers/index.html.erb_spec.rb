require 'rails_helper'

RSpec.describe "cityweathers/index", type: :view do
  before(:each) do
    assign(:cityweathers, [
      Cityweather.create!(
        :city => "City"
      ),
      Cityweather.create!(
        :city => "City"
      )
    ])
  end

  it "renders a list of cityweathers" do
    render
    assert_select "tr>td", :text => "City".to_s, :count => 2
  end
end
