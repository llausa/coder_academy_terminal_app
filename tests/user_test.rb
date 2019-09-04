# frozen_string_literal: true

require 'test/unit' # https://www.rubydoc.info/gems/test-unit/2.3.1/Test/Unit
require '/Users/Santiago/desktop/ca_workbook/shtda1/user' # importing User class

# Setup tests for the User class
class UserTest < Test::Unit::TestCase
  # instance variable @user created to store an instance of User class
  def setup
    @user = User.new
  end

  def email_present
    user_email_output = @user.email
    assert_equal('test@email.com', user_email_output)
  end
end
