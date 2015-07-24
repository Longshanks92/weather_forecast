require 'rails_helper'

RSpec.describe "postcodeweathers/index", type: :view do
  before(:each) do
    assign(:postcodeweathers, [
      Postcodeweather.create!(
        :postcode => "Postcode"
      ),
      Postcodeweather.create!(
        :postcode => "Postcode"
      )
    ])
  end

  it "renders a list of postcodeweathers" do
    render
    assert_select "tr>td", :text => "Postcode".to_s, :count => 2
  end
end
