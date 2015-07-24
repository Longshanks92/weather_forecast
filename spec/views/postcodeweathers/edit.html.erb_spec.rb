require 'rails_helper'

RSpec.describe "postcodeweathers/edit", type: :view do
  before(:each) do
    @postcodeweather = assign(:postcodeweather, Postcodeweather.create!(
      :postcode => "MyString"
    ))
  end

  it "renders the edit postcodeweather form" do
    render

    assert_select "form[action=?][method=?]", postcodeweather_path(@postcodeweather), "post" do

      assert_select "input#postcodeweather_postcode[name=?]", "postcodeweather[postcode]"
    end
  end
end
