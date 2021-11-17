class Book < ApplicationRecord
  belongs_to :genre
  attachment :image
end
