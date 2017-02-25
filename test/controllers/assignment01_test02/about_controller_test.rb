require 'test_helper'

class Assignment01Test02::AboutControllerTest < ActionController::TestCase
  test "should get about" do
    get :about
    assert_response :success
  end

end
