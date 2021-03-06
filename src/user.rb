# frozen_string_literal: true

require_relative 'configuration' # loading confirguation.rb file for EMAIL and NAME constants

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

# an isntance of User class is spun up and saved to the USER constant for use in shtda.rb and todo_list.rb
USER = User.new