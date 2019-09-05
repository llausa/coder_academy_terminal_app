# frozen_string_literal: true

require 'test/unit' # https://www.rubydoc.info/gems/test-unit/2.3.1/Test/Unit
require '/Users/Santiago/desktop/ca_workbook/shtda1/user' # importing User class
require '/Users/Santiago/desktop/ca_workbook/shtda1/configuration' # loading confirguation.rb file for EMAIL and TOKEN constants

# Setup tests for the User class
class UserTest < Test::Unit::TestCase
  # instance variable @user created to store an instance of User class
  def setup
    @user = User.new
  end

  def test_email_present
    user_email_output = @user.email
    assert_equal(EMAIL, user_email_output)
  end

  def test_name_present
    user_name_output = @user.name
    assert_equal(NAME, user_name_output)
  end
end
