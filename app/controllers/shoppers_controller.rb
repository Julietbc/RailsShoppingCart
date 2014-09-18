class ShoppersController < ApplicationController



  def index
  end



  def new
    @shopper = Shopper.new
  end


  def create
    @shopper = Shopper.create(shopper_params)
    if @shopper.save
      redirect_to shopper_path(@shopper)
    else
      raise 'I shouldnt be here?!?!?!'
    end
  end



  def sign_in
    @shopper = Shopper.find_by_user_name(params[:user_name])

    if @shopper.valid_password?(params[:password])
      redirect_to shopper_path(@shopper)
    else
      redirect_to shoppers_path
    end        #figure out how to raise flash error
  end



  def show
  end



 private

 def shopper_params
  params.require(:shopper).permit(:user_name, :email, :password)
 end
end

