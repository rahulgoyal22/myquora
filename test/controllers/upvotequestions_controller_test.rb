require 'test_helper'

class UpvotequestionsControllerTest < ActionController::TestCase
  test "should get upvote" do
    get :upvote
    assert_response :success
  end

end
