class Subscription < ApplicationRecord
  has_many :join_carts, dependent: :destroy
end
