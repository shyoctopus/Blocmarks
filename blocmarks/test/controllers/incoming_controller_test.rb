require 'test_helper'

class IncomingControllerTest < ActionController::TestCase
  test "should get post:incoming," do
    get :post:incoming,
    assert_response :success
  end

  test "should get to:" do
    get :to:
    assert_response :success
  end

  test "should get incoming#create" do
    get :incoming#create
    assert_response :success
  end

end
