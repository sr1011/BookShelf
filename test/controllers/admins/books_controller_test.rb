require 'test_helper'

class Admins::BooksControllerTest < ActionDispatch::IntegrationTest
  test "should get new" do
    get admins_books_new_url
    assert_response :success
  end

  test "should get index" do
    get admins_books_index_url
    assert_response :success
  end

  test "should get show" do
    get admins_books_show_url
    assert_response :success
  end

  test "should get edit" do
    get admins_books_edit_url
    assert_response :success
  end

end
