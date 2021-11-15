class Users::SubscriptionsController < ApplicationController
  def index
    @subscriptions = Subscription.all
  end
end
