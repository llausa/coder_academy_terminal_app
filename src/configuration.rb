# frozen_string_literal: true

@email = ARGV[0], @name = ARGV[1] if ARGV.length == 2 # command line arguments received here

EMAIL = @email || 'santiago.chamon@gmail.com' # REQUIRED: change the value in the string in case your command line args don't work
NAME = @name || 'User' # REQUIRED: change the value in the string in case your command line args don't work
