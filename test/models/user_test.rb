require 'test_helper'

class UserTest < ActiveSupport::TestCase


  test 'should be valid without a name' do
    user = User.new(email: 'john@example.com', password: 'password')
    assert user.valid?
  end

  test 'should not be valid without an email' do
    user = User.new( password: 'password')
    assert_not user.valid?
  end

  test 'should not be valid without a password' do
    user = User.new(email: 'john@example.com')
    assert_not user.valid?
  end


  # Add more tests based on your model's validations and associations

end
