class Users::UsersController < ApplicationController

  def show
    @user = current_user
    @book_carts = current_user.book_carts
  end

end
