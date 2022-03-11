class Users::BooksController < ApplicationController
  before_action :authenticate_user!
  
  helper_method :sort_column, :sort_direction
  
  def index
    @books = Book.order("#{sort_column} #{sort_direction}") 
    @genres = Genre.all
  end

  def show
    @book = Book.find(params[:id])
    @book_cart = BookCart.new
    @book_comment = BookComment.new
    @genres = Genre.all
  end
  
private

    def sort_direction
      %w[asc desc].include?(params[:direction]) ? params[:direction] : 'asc'
    end
    
    def sort_column
      Book.column_names.include?(params[:sort]) ? params[:sort] : 'id'
    end
  
end
