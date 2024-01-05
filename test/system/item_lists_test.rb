require "application_system_test_case"

class ItemListsTest < ApplicationSystemTestCase
  setup do
    @item_list = item_lists(:one)
  end

  test "visiting the index" do
    visit item_lists_url
    assert_selector "h1", text: "Item lists"
  end

  test "should create item list" do
    visit item_lists_url
    click_on "New item list"

    fill_in "Mg", with: @item_list.mg
    fill_in "Price", with: @item_list.price
    fill_in "Prod name", with: @item_list.prod_name
    click_on "Create Item list"

    assert_text "Item list was successfully created"
    click_on "Back"
  end

  test "should update Item list" do
    visit item_list_url(@item_list)
    click_on "Edit this item list", match: :first

    fill_in "Mg", with: @item_list.mg
    fill_in "Price", with: @item_list.price
    fill_in "Prod name", with: @item_list.prod_name
    click_on "Update Item list"

    assert_text "Item list was successfully updated"
    click_on "Back"
  end

  test "should destroy Item list" do
    visit item_list_url(@item_list)
    click_on "Destroy this item list", match: :first

    assert_text "Item list was successfully destroyed"
  end
end
