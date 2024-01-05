require "test_helper"

class ProductInformationControllerTest < ActionDispatch::IntegrationTest
  test "should get new" do
    get product_information_new_url
    assert_response :success
  end

  test "should get create" do
    get product_information_create_url
    assert_response :success
  end
end
