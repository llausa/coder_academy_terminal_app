# frozen_string_literal: true

require 'test/unit' # https://www.rubydoc.info/gems/test-unit/2.3.1/Test/Unit
require_relative 'src/user' # importing User class
require_relative 'src/configuration' # loading confirguation.rb file for EMAIL and TOKEN constants

# Setup tests for the User class
class UserTest < Test::Unit::TestCase
  # instance variable @user created to store an instance of User class
  def setup
    @user = User.new
  end

  # Test to check that an email is present in EMAIL
  def test_email_present
    user_email_output = @user.email
    assert_equal(EMAIL, user_email_output)
  end

  # Test to check that a name is present in NAME
  def test_name_present
    user_name_output = @user.name
    assert_equal(NAME, user_name_output)
  end
end
