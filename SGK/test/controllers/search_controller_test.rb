require 'test_helper'

class SearchControllerTest < ActionDispatch::IntegrationTest
  test "should get get_all_users" do
    get search_get_all_users_url
    assert_response :success
  end
end
