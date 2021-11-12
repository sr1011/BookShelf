class Admins::SubscriptionsController < ApplicationController
  
  def new
    @subscription = Subscription.new
  end
  
  def create
    @subscription = Subscription.new(subscription_params)
    @subscription.save
    redirect_to admins_subscriptions_path #一覧画面へ
  end

  def index
    @subscriptions = Subscription.all
  end

  def edit
    @subscription = Subscription.find(params[:id])
  end
  
  def destroy
    subscription = Subscription.find(params[:id])
    subscription.destroy
    redirect_to admins_subscriptions_path #一覧画面へ
  end
  
  def update
    @subscription = Subscription.find(params[:id])
    @subscription.update(subscription_params)
    redirect_to admins_subscriptions_path #一覧画面へ
  end
  
  private
  
  def subscription_params
    params.require(:subscription).permit(:title, :price, :descript)
  end
  
end
