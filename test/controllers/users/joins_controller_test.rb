require 'test_helper'

class Users::JoinsControllerTest < ActionDispatch::IntegrationTest
  test "should get new" do
    get users_joins_new_url
    assert_response :success
  end

  test "should get confirm" do
    get users_joins_confirm_url
    assert_response :success
  end

  test "should get complete" do
    get users_joins_complete_url
    assert_response :success
  end

end
