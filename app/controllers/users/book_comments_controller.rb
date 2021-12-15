class Users::BookCommentsController < ApplicationController
  def create
    book = Book.find(params[:book_id])
    current_user.create_book_comment(book_comment_params,book)
    redirect_to users_book_path(book)
  end

  def destroy
    BookComment.find_by(params[:book_id]).destroy
    redirect_to users_book_path(params[:book_id])
  end
  
  private

  def book_comment_params
    params.require(:book_comment).permit(:comment)
  end
end
