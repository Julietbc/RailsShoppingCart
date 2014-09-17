class Shopper < ActiveRecord::Base
  validates :email, uniqueness: true
  validates :password,
end
