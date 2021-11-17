require 'test_helper'

class Users::JoinCartsControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get users_join_carts_index_url
    assert_response :success
  end

end
