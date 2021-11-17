class Users::JoinCartsController < ApplicationController
  def index
    @join_carts = JoinCart.all
  end
  
  def create
    @join_cart = current_user.join_carts.new(join_cart_params)
    @join_cart.save
    redirect_to new_users_join_path
  end

  private
  def join_cart_params
    params.require(:join_cart).permit(:subscription_id, :user_id)
  end
  
end
