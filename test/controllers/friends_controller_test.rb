require 'test_helper'

class FriendsControllerTest < ActionDispatch::IntegrationTest
  test "should get wellcome" do
    get friends_wellcome_url
    assert_response :success
  end

  test "should get index" do
    get friends_index_url
    assert_response :success
  end

end
