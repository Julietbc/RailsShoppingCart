require "rails_helper"

RSpec.describe "Shopper" do

  before(:each) do
    @test_shopper = FactoryGirl.create(:shopper)
  end

  it "should have a user_name" do
    expect(@test_shopper.user_name).to eq('JVS_123')
  end

  it "should have an email address" do
    expect(@test_shopper.email).to eq("mrsdoubtfire@gmail.com")
  end

  it "should have a password" do
    expect(@test_shopper.password).to eq("y42b7oj8")
  end

  it "is invalid for a bad password" do
    @test_shopper.password = "1"
    expect(@test_shopper.valid?).to be(false)
  end

  # it "does not allow the same email to be registered twice" do
  #   @test_shopper.email = "mrsdoubtfire@gmail.com"
  #   expect(@test_shopper.valid?).to be(false)
  # end

end


