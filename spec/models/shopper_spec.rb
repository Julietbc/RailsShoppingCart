require "rails_helper"

#RSpec.describe Shopper, :type => :model do #-- does this indicate the first type of test that should be run on any model?


RSpec.describe "Shopper" do

  before(:each) do
    @test_shopper = Shopper.new(user_name: 'Juliet', email: 'juliet@example.com', password: 'password')
  end

  it "should have a user_name" do
    expect(@test_shopper.user_name).to eq('Juliet')
  end

  it "should have an email address" do
    expect(@test_shopper.email).to eq('juliet@example.com')
  end

  it "should have a password" do
    expect(@test_shopper.password).to eq('password')
  end


end
