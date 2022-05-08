class User < ApplicationRecord
  has_many :cart
  has_many :address
end
