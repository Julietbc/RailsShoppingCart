class Shopper < ActiveRecord::Base
  validates :email, uniqueness: true
  validates :user_name, uniqueness: true
  validates :password, format: { with: /[a-zA-Z]\w{3,14}/}
end

