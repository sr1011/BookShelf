class Admins::BooksController < ApplicationController
  before_action :authenticate_admin!
  
  def new
    @book = Book.new
    @genres = Genre.all
  end
  
  def create
    @book = Book.new(book_params)
    if @book.save
      redirect_to admins_books_path
    else
      render :new
    end
  end

  def index
    @books = Book.all
    @genres = Genre.all
  end

  def edit
    @book = Book.find(params[:id])
    @genres = Genre.all
  end
  
  def show
    @book = Book.find(params[:id])
    @book_comment = BookComment.new
    @genres = Genre.all
  end
  
  def update
    @book = Book.find(params[:id])
    @book.update(book_params)
    redirect_to admins_books_path #一覧画面へ
  end
  
  def destroy
    book = Book.find(params[:id])
    book.destroy
    redirect_to admins_books_path  #一覧画面へ
  end
  
  private
    
  def book_params
    params.require(:book).permit(:name, :image, :author, :descript, :genre_id, :is_active)
  end
  
end
