require "rails_helper"

describe "showing the sign-up/sign-in buttons" do

  it "will display two large buttons " do
    visit "/"
    expect(page).to have_css('.pure-button')
  end

  it "will direct user to sign-in form" do
    visit "/"
    click_link "Sign in"
    expect(page).to have_content("User name")
  end

  it "will send user to the homepage when they submit correct login details" do
    visit "/shoppers/sign_in_form"
    fill_in 'user_name', :with => 'theonlytest'
    fill_in 'password', :with => 'y42b7oj8'
    click_on 'Sign in'
    expect(page).to have_content("Welcome")
  end

end



