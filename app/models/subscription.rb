class Subscription < ApplicationRecord
  belongs_to :joins, dependent: :destroy
  has_many :join_carts, dependent: :destroy
end
