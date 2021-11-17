class Users::SubscriptionsController < ApplicationController
  def index
    @subscriptions = Subscription.all
  end
  
  def show
    @subscription = Subscription.find(params[:id])
    @join_cart = JoinCart.new
  end
end
