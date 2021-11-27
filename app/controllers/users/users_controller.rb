class Users::UsersController < ApplicationController
  before_action :authenticate_user!
  
  def unsubscribe
    @user = User.find_by(email: params[:email])
  end

  def show
    @user = current_user
    @book_carts = current_user.book_carts
    @genres = Genre.all
  end
  
  def edit
    @user = current_user
  end
  
  def update
     @user = current_user
   if @user.update(user_params)
      redirect_to users_user_path(current_user.id)
   else
      render :edit
   end
  end
  
  def withdraw
    @user = current_user
    if @user.update(is_deleted: true)
      reset_session
      redirect_to root_path
    end
  end
  
  private

  def user_params
    params.require(:user).permit(:email, :name, :address, :postal_code, :phone_number)
  end

end
