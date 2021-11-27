class Admins::UsersController < ApplicationController
  before_action :authenticate_admin!

  def index
  @users = User.all
  end

  def show
  @user = User.find(params[:id])
  end

  def edit
  @user = User.find(params[:id])
  end

  def update
  @user = User.find(params[:id])
  @user.update(user_paramas)
  redirect_to admins_users_path(@user.id)
  end

  private
  def user_paramas
    params.require(:user).permit(:name,:postal_code,:phone_number,:email,:address,:is_deleted)
  end
end
