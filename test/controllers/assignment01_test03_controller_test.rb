require 'test_helper'

class Assignment01Test03ControllerTest < ActionController::TestCase
  test "should get index" do
    get :index
    assert_response :success
  end

end
