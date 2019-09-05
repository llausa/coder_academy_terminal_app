# frozen_string_literal: true

# messages.rb handles all output messages of the shtda1.rb file which is the main exec of the app

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

def today_todo_list_created(today)
  "Your #{today}.txt file has been created. Please run shtda.rb again."
end