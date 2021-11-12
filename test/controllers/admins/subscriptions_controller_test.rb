require 'test_helper'

class Admins::SubscriptionsControllerTest < ActionDispatch::IntegrationTest
  test "should get new" do
    get admins_subscriptions_new_url
    assert_response :success
  end

  test "should get index" do
    get admins_subscriptions_index_url
    assert_response :success
  end

  test "should get edit" do
    get admins_subscriptions_edit_url
    assert_response :success
  end

end
