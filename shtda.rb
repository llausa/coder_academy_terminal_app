# frozen_string_literal: true

require '/Users/Santiago/desktop/ca_workbook/shtda1/src/todo_item'      # importing ToDoItem class
require '/Users/Santiago/desktop/ca_workbook/shtda1/src/todo_list'      # importing ToDoList class
require '/Users/Santiago/desktop/ca_workbook/shtda1/src/user'           # importing User class
require '/Users/Santiago/desktop/ca_workbook/shtda1/src/configuration'  # importing constants EMAIL and NAME from configuration.rb
require '/Users/Santiago/desktop/ca_workbook/shtda1/src/messages'       # importing methods from messages.rb

require 'pp' # https://ruby-doc.org/stdlib-2.4.1/libdoc/pp/rdoc/PP.html

puts "Hi, #{USER.name}!" # calling on USER instance of User.class set in user.rb - accessing name through attr_accessor
puts welcome # welcome method from messages.rb
app_on = true # local var that acts as conditional for while loop of app - while loop will end when app_on is set to false
today_todo_list = ToDoList.new # new instance of ToDoList class set to local var today_todo_list

# this while loop runs as long as app_on equals true - it also runs the entire app
while app_on
  puts main_menu # puts the main_menu method from messages.rb
  user_input = gets.chomp.to_s.downcase # user input query

  if user_input == 'to-do list' #
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

    today_todo_list.complete(id_param_input)

  elsif user_input == 'send email digest'
    today_todo_list.send_email_digest
  elsif user_input == 'help'
    puts 'help'
  elsif user_input == 'exit'
    puts 'Are you sure?(y or n)'
    user_input = gets.chomp.to_s.downcase
    if user_input == 'y'
      puts 'goodbye!'
      app_on = false
    elsif user_input == 'n'
      puts 'no wokkas'
    else
      puts 'Invalid Command'
    end
  else
    puts 'Invalid Command'
  end
end
