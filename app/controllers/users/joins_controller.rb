class Users::JoinsController < ApplicationController
  
  def new
    @join = current_user.Join.new(join_params)
  end

  def create
    @join = current_user.Join.new(join_params)
    @join.save
    redirect_to root
  end

  def confirm
    @joins = current_member.joins.
  end

  def complete
  end
  
  private
  def join_params
    params.require(:join).permit(:user_id, :subscription_id, :payment_method)
  end
  
  end
end
