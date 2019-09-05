# frozen_string_literal: true

require '/Users/Santiago/desktop/ca_workbook/shtda1/src/configuration' # loading confirguation.rb file for EMAIL and TOKEN constants

# Initializing User class which holds the outline for the User in the app
class User
  attr_accessor :email, :name # email and name attributes of User can be read and/or modified

  # when User is initialized @email and @name instance variable are set to the EMAIL and NAME
  # constants from configuration.rb
  def initialize
    @email = EMAIL
    @name = NAME
  end
end
