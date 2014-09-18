class Shopper < ActiveRecord::Base
  validates :email, uniqueness: true
  validates :user_name, uniqueness: true
  validates :password, format: { with: /[a-zA-Z]\w{3,14}/}

  def valid_password?(submitted_password)
    password == submitted_password
  end

end


