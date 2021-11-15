require 'test_helper'

class Users::SubscriptionsControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get users_subscriptions_index_url
    assert_response :success
  end

end
