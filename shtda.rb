# frozen_string_literal: true

require '/Users/Santiago/desktop/ca_workbook/shtda1/src/todo_item'      # importing ToDoItem class
require '/Users/Santiago/desktop/ca_workbook/shtda1/src/todo_list'      # importing ToDoList class
require '/Users/Santiago/desktop/ca_workbook/shtda1/src/user'           # importing User class
require '/Users/Santiago/desktop/ca_workbook/shtda1/src/configuration'  # importing constants EMAIL and NAME from configuration.rb
require '/Users/Santiago/desktop/ca_workbook/shtda1/src/messages'       # importing methods from messages.rb

require 'pp' # https://ruby-doc.org/stdlib-2.4.1/libdoc/pp/rdoc/PP.html
require 'colorize' # https://github.com/fazibear/colorize

puts "Hi, #{USER.name}!" # calling on USER instance of User.class set in user.rb - accessing name through attr_accessor
puts welcome # welcome method from messages.rb
app_on = true # local var that acts as conditional for while loop of app - while loop will end when app_on is set to false
today_todo_list = ToDoList.new # new instance of ToDoList class set to local var today_todo_list

# this while loop runs as long as app_on equals true - it also runs the entire app
while app_on
  puts main_menu # puts the main_menu method from messages.rb
  user_input = gets.chomp.to_s.downcase # user input query

  if user_input == 'to-do list' # if user submits to-do list run the code below
    pp today_todo_list.list # pretty print the array that is returned from today_todo_list.list
  elsif user_input == 'add to-do' # if user submits add to-do run the code below
    puts 'description: ' # query user for description of to-do item
    name_param_input = gets.chomp.to_s.downcase # save desc to name_param_input
    puts 'due date (optional): ' # query user for due date of to-do item
    due_date_param_input = gets.chomp.to_s.downcase # save due date or empty str to due_date_param_input

    # The next two line hold the logic that increments the id of to-do items as they are created/added
    # to the to-do list. The hash with the highes :id key is saved to local var max_id
    # then max_id is queried and if it return true, it will be incremented by 1 or be set as 1
    # the only instance that max_id is set to 1 is when the today_todo_list.list array is empty
    max_id = today_todo_list.list.max_by { |todo_item| todo_item[:id] }
    max_id = max_id ? max_id[:id] + 1 : 1

    # this line pretty prints the updated today_todo_list.list array after a ToDoItem has been added to it.
    # The ToDoItem is in the correct format as we are passing the id, name and due date params from the user
    # to the constant TODOITEM, which is an instance of the ToDoItem class. We are simultaneously creating a
    # a new to-do item and adding it to the ToDo list we are using (called today_todo_list).
    pp today_todo_list.add(TODOITEM.create(max_id, name_param_input, due_date_param_input))

  elsif user_input == 'complete to-do' # if user submits complete to-do run the code below
    puts 'at what id? ' # queries user for id of to-do item they'd like to "complete"
    id_param_input = gets.chomp.to_i # transforms user's input to integer and save it to local var id_param_input

    today_todo_list.complete(id_param_input) # calls the complete method of the ToDoList class, passing it the correct param

  elsif user_input == 'send email digest' # if user submits 'send email digest' run the code below
    today_todo_list.send_email_digest # run method 'send_email_digest' of ToDoList class - this send a request to Sendgrid
  elsif user_input == 'help' # run code below if user submits 'help'
    puts 'help' # puts help method from messages.rb
  elsif user_input == 'chuck norris' # easter egg :D
    puts chuck_norris_joke
  elsif user_input == 'exit' # if user submits 'exit' begin shut down sequence
    # shuting down sequence asks the user if they are sure because they lose their data if they quit without sending
    # and email digest.
    puts 'Are you sure?(y or n)'
    user_input = gets.chomp.to_s.downcase
    if user_input == 'y'
      puts 'goodbye!'
      pp today_todo_list.list # the final list of the To-Do list is pretty printed just before the app closes
      app_on = false
    elsif user_input == 'n'
      puts 'no wokkas'
    else
      puts 'Invalid Command' # invalid command returned if user types anything other than y or n
    end
  else
    puts 'Invalid Command' # invalid command if user submits anything other than available commands
  end
end
