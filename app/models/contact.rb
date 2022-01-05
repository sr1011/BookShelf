class Contact < ApplicationRecord
  belongs_to :user
  validates :title, presence: true
  validates :massage, presence: true
end
