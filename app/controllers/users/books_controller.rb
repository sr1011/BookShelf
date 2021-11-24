class Users::BooksController < ApplicationController
  def index
    @books = Book.all
    @genres = Genre.all
  end

  def show
    @book = Book.find(params[:id])
    @book_cart = BookCart.new
    @book_comment = BookComment.new
    @genres = Genre.all
  end
  
end
