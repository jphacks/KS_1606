require 'test_helper'

class Admin::ManualControllerTest < ActionController::TestCase
  test "should get information" do
    get :information
    assert_response :success
  end

  test "should get menu" do
    get :menu
    assert_response :success
  end

  test "should get dashboard" do
    get :dashboard
    assert_response :success
  end

end
