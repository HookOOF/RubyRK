# test/models/friend_test.rb
require "test_helper"

class FriendTest < ActiveSupport::TestCase
  test "should be valid" do
    friend = Friend.new(
      branch_name: "Example Branch",
      manager: "John Doe",
      email: "john@example.com",
      phone: "123-456-7890",
      user_id: 1
    )
    assert_not friend.valid?
  end

  test "should not be valid without branch_name" do
    friend = Friend.new(
      manager: "John Doe",
      email: "john@example.com",
      phone: "123-456-7890",
      user_id: 1
    )
    assert_not friend.valid?, "Friend without branch_name should not be valid"
  end

  test "should not be valid without user_id" do
    friend = Friend.new(
      branch_name: "Example Branch",
      manager: "John Doe",
      email: "john@example.com",
      phone: "123-456-7890"
    )
    assert_not friend.valid?, "Friend without user_id should not be valid"
  end
end
