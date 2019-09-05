# frozen_string_literal: true

# messages.rb handles all output messages of the shtda.rb file which is the main exec of the app

def welcome
  "Welcome to Santiago's Humble To-Do App\n"
end

def main_menu
  "
  What would you like to do? Options:
  - to-do list,
  - add to-do,
  - complete to-do,
  - send email digest
  - help
  - exit"
end

def help
  "
  Here is what everything does:
  to-do list = list all outstanding to-do items
  add to-do  = add to-do item to the to-do list
  complete to-do = remove to-do item from the to-do list
  send email digest = send to-do list to email specified in configuration.rb
  help = shows this screen
  exit = quits the app - be careful! Save the final output or send an email digest
  "
end

def chuck_norris_joke
  'Chuck Norris counted to infinity... Twice.'
end

def no_problem
  'No wokkas!'
end

def invalid_command
  'Invalid Command'
end

def are_you_sure
  'Are you sure?(y or n)'
end

def goodbye
  "Goodbye! Thank you for using Santiago's Humble To-Do App\n"
end
