# frozen_string_literal: true

require './todo_item'
require './todo_list'
require './user'

puts "Welcome to Santiago's To-Do App\n"

app_on = true

while app_on
  puts "
What would you like to do? Options:
- to-do list,
- add to-do,
- complete to-do,
- send email digest
- help
- exit"
  user_input = gets.chomp.to_s.downcase

  if user_input == 'to-do list'
    pp @data # maybe loop through list?
  elsif user_input == 'add to-do'
    puts 'name: '
    name_param_input = gets.chomp.to_s.downcase
    puts 'due date (optional): '
    due_date_param_input = gets.chomp.to_s.downcase

    TODOITEM.add(name_param_input, due_date_param_input)

  elsif user_input == 'complete to-do'
    puts 'at what index? '
    index_param_input = gets.chomp

    complete_to_do(index_param_input)
  elsif user_input == 'send email digest'
    send_email
  elsif user_input == 'help'
    puts 'help'
  elsif user_input == 'exit'
    puts 'bye'
    app_on = false
  else
    puts 'Invalid Command'
  end
end
