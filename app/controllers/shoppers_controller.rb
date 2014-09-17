class ShoppersController < ApplicationController

  def index
  end

  def create
    @shopper = Shopper.create(shopper_params)
    if @shopper.save
      redirect_to shopper_path(@shopper)
    else
      raise 'I shouldnt be here?!?!?!'
    end
  end

  def show
  end

 private

 def shopper_params
  params.require(:shopper).permit(:user_name, :email, :password)
 end
end

