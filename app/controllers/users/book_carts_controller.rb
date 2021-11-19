class Users::BookCartsController < ApplicationController
  
  def create
    @book_cart = current_user.book_carts.new(book_cart_params)
    @book_cart.save
    redirect_to users_user_path(current_user.id)
  end
  
  def destroy
    book_cart = BookCart.find(params[:id])
    book_cart.destroy
    redirect_to users_user_path(current_user.id)
  end
  
  private
  def book_cart_params
    params.require(:book_cart).permit(:book_id, :user_id)
  end
end
