class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  has_many :join_carts, dependent: :destroy
  has_many :book_carts, dependent: :destroy
  has_many :book_comments, dependent: :destroy
  has_many :favorites, dependent: :destroy
  has_many :contacts, dependent: :destroy
  
  def same?(current_)
    self == current_user
  end
  
  def create_book_comment(book_comment_params,book)
    comment = book_comments.new(book_comment_params)
    comment.book_id = book.id
    comment.save
  end
end
