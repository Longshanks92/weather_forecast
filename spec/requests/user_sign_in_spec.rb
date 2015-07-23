require "spec_helper"

describe "user sign in" do
  it "allows users to sign in after they have registered" do
    user = User.create(:email    => "test@example.com",
                       :password => "pineapples")

    visit "/users/sign_in"

    fill_in "Email",    :with => "test@example.com"
    fill_in "Password", :with => "pineapples"

    click_button "Sign in"

    page.should have_content("Signed in successfully.")
  end
end