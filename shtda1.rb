# frozen_string_literal: true

require './todo_item'
require './todo_list'
require './user'
require 'pp'
require 'json'
require './configuration'

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
    pp TESTTODOLIST.list
  elsif user_input == 'add to-do'
    puts 'description: '
    name_param_input = gets.chomp.to_s.downcase
    puts 'due date (optional): '
    due_date_param_input = gets.chomp.to_s.downcase

    max_id = TESTTODOLIST.list.max_by { |todo_item| todo_item[:id] }
    max_id = max_id ? max_id[:id] + 1 : 1

    pp TESTTODOLIST.add(TODOITEM.create(max_id, name_param_input, due_date_param_input))
  elsif user_input == 'complete to-do'
    puts 'at what id? '
    id_param_input = gets.chomp.to_i

    # TESTTODOLIST.list.delete_if { |todo_item| todo_item[:id] == id_param_input }

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
