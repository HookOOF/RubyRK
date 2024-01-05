require "test_helper"

class PagesControllerTest < ActionDispatch::IntegrationTest
  test "should get new_page" do
    get pages_new_page_url
    assert_response :success
  end
end
