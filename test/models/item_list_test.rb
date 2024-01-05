# test/models/item_list_test.rb

require 'test_helper'

class ItemListTest < ActiveSupport::TestCase


  test "mg should be greater than 0" do
    item_list = ItemList.new(prod_name: "Example", mg: 0, price: 19.99)
    assert_not item_list.valid?
  end
  test "price should be present" do
    item_list = ItemList.new(prod_name: "Example", mg: 10)
    assert_not item_list.valid?
  end

  test "prod_name should be present" do
    item_list = ItemList.new(mg: 10, price: 19.99)
    assert_not item_list.valid?

  end

  test "price should be numerical" do
    item_list = ItemList.new(prod_name: "Example", mg: 10, price: "abc")
    assert_not item_list.valid?
  end
end

