require 'rails_helper'

RSpec.describe ShoppersController, :type => :controller do

  describe '#index' do
    it 'should display the index page' do
      get :index
      expect(response).to render_template("index")
      end
    end


  describe '#create' do
    it 'should return a shopper object' do
      expect{
        post :create, shopper: FactoryGirl.attributes_for(:shopper)
      }.to change(Shopper,:count).by(1)
    end
  end

  describe '#create - redirect_to' do
    it 'should redirect to the shoppers homepage' do
      post :create, shopper: FactoryGirl.attributes_for(:shopper)
      expect(response).to redirect_to shoppers_path(@shopper)
    end
  end
end


