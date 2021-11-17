class Subscription < ApplicationRecord
  belongs_to :joins, dependent: :destroy
end
