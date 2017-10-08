require 'test_helper'

class StaticControllerTest < ActionDispatch::IntegrationTest
  test "should get home" do
    get static_home_url
    assert_response :success
  end

  test "should get book" do
    get static_book_url
    assert_response :success
  end

  test "should get contact" do
    get static_contact_url
    assert_response :success
  end

end
