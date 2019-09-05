# frozen_string_literal: true

require '/Users/Santiago/desktop/ca_workbook/shtda1/src/todo_item'
require '/Users/Santiago/desktop/ca_workbook/shtda1/src/todo_list'
require '/Users/Santiago/desktop/ca_workbook/shtda1/src/user'
require '/Users/Santiago/desktop/ca_workbook/shtda1/src/configuration'
require '/Users/Santiago/desktop/ca_workbook/shtda1/src/messages'

require 'pp'
require 'json'
require 'date' # https://ruby-doc.org/stdlib-1.9.3/libdoc/date/rdoc/Date.html

puts welcome
app_on = true
today_todo_list = ToDoList.new

while app_on
  puts main_menu
  user_input = gets.chomp.to_s.downcase

  if user_input == 'to-do list'
    pp today_todo_list.list
  elsif user_input == 'add to-do'
    puts 'description: '
    name_param_input = gets.chomp.to_s.downcase
    puts 'due date (optional): '
    due_date_param_input = gets.chomp.to_s.downcase

    max_id = today_todo_list.list.max_by { |todo_item| todo_item[:id] }
    max_id = max_id ? max_id[:id] + 1 : 1

    pp today_todo_list.add(TODOITEM.create(max_id, name_param_input, due_date_param_input))

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
