class Book < ApplicationRecord
  belongs_to :genre
  attachment :image
  has_many :book_carts, dependent: :destroy
  has_many :book_comments, dependent: :destroy
  has_many :favorites, dependent: :destroy
  
  validates :name, presence: true
  validates :image, presence: true 
  validates :descript, presence: true
  validates :author, presence: true

  def favorited_by?(user)
    favorites.where(user_id: user.id).exists?
  end
end
