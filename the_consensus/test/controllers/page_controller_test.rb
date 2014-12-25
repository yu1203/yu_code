require 'test_helper'

class PageControllerTest < ActionController::TestCase
  test "should get yu" do
    get :yu
    assert_response :success
  end

end
