class Users::JoinsController < ApplicationController
  
  def new
    @join = Join.new
    @user = current_user
    @join_carts = current_user.join_carts
  end

  def create
    @join = Join.new(join_params)
    @join.save
    redirect_to users_joins_confirm_path
  end

  def confirm
    @join_carts = current_user.join_carts
  end

  def complete
  end
  
  private
  def join_params
    params.require(:join).permit(:subscription_id, :user_id, :payment_method)
  end
  
  
end
