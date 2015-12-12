require 'test_helper'

class PagesControllerTest < ActionController::TestCase
  test "should get about" do
    get :about
    assert_response :success
    assert_select "title", "About | GVF"
  end

  test "should get help" do
    get :help
    assert_response :success
  end

  test "should get faq" do
    get :faq
    assert_response :success
  end

end
