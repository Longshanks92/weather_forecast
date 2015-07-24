require 'rails_helper'

RSpec.describe "postcodeweathers/new", type: :view do
  before(:each) do
    assign(:postcodeweather, Postcodeweather.new(
      :postcode => "MyString"
    ))
  end

  it "renders new postcodeweather form" do
    render

    assert_select "form[action=?][method=?]", postcodeweathers_path, "post" do

      assert_select "input#postcodeweather_postcode[name=?]", "postcodeweather[postcode]"
    end
  end
end
