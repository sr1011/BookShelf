require 'test_helper'

class Users::GenresControllerTest < ActionDispatch::IntegrationTest
  test "should get show" do
    get users_genres_show_url
    assert_response :success
  end

end
