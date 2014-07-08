require 'test_helper'

class WelcomeControllerTest < ActionController::TestCase

  test "should get version" do
    get :version
    assert_response :success
  end

end
