require 'test_helper'

class Assignment01Test03::PageControllerTest < ActionController::TestCase
  test "should get index" do
    get :index
    assert_response :success
  end

end
