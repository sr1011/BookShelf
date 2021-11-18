class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  has_many :join_carts, dependent: :destroy
  has_many :book_carts, dependent: :destroy
  has_many :book_comments, dependent: :destroy
end
