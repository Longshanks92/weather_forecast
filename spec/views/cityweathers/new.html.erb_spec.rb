require 'rails_helper'

RSpec.describe "cityweathers/new", type: :view do
  before(:each) do
    assign(:cityweather, Cityweather.new(
      :city => "MyString"
    ))
  end

  it "renders new cityweather form" do
    render

    assert_select "form[action=?][method=?]", cityweathers_path, "post" do

      assert_select "input#cityweather_city[name=?]", "cityweather[city]"
    end
  end
end
