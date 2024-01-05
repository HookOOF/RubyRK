require "test_helper"

class ItemListsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @item_list = item_lists(:one)
  end

  test "should get index" do
    get item_lists_url
    assert_response :success
  end

  test "should get new" do
    get new_item_list_url
    assert_response :success
  end

  test "should create item_list" do
    assert_difference("ItemList.count") do
      post item_lists_url, params: { item_list: { mg: @item_list.mg, price: @item_list.price, prod_name: @item_list.prod_name } }
    end

    assert_redirected_to item_list_url(ItemList.last)
  end

  test "should show item_list" do
    get item_list_url(@item_list)
    assert_response :success
  end

  test "should get edit" do
    get edit_item_list_url(@item_list)
    assert_response :success
  end

  test "should update item_list" do
    patch item_list_url(@item_list), params: { item_list: { mg: @item_list.mg, price: @item_list.price, prod_name: @item_list.prod_name } }
    assert_redirected_to item_list_url(@item_list)
  end

  test "should destroy item_list" do
    assert_difference("ItemList.count", -1) do
      delete item_list_url(@item_list)
    end

    assert_redirected_to item_lists_url
  end
end
