require 'rails_helper'

RSpec.describe "cityweathers/edit", type: :view do
  before(:each) do
    @cityweather = assign(:cityweather, Cityweather.create!(
      :city => "MyString"
    ))
  end

  it "renders the edit cityweather form" do
    render

    assert_select "form[action=?][method=?]", cityweather_path(@cityweather), "post" do

      assert_select "input#cityweather_city[name=?]", "cityweather[city]"
    end
  end
end
