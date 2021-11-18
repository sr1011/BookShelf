class Book < ApplicationRecord
  belongs_to :genre
  attachment :image
  has_many :book_carts, dependent: :destroy
  has_many :book_comments, dependent: :destroy
end
