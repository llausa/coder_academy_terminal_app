# frozen_string_literal: true

require 'json' # https://ruby-doc.org/stdlib-2.6.3/libdoc/json/rdoc/JSON.html
require 'date' # https://ruby-doc.org/stdlib-1.9.3/libdoc/date/rdoc/Date.html
require 'sendgrid-ruby' # https://github.com/sendgrid/sendgrid-ruby
require 'pp'

require '/Users/Santiago/desktop/ca_workbook/shtda1/todo_item'
require './configuration'

# Initializing ToDoList class which holds the outline for the To-Do Lists in the app
class ToDoList
  include SendGrid
  # when ToDoList is initialized, it takes a txt file that holds json hashes of ToDoItem(s)
  # through the todo_list parameter
  def initialize(todo_list = nil)
    @todo_list = todo_list # todo_list parameter assigned to instance variable @todo_list
    if @todo_list.nil?
      @data = [] # empty array assigned to instance variable @data. This will hold the hashes of ToDo items
    else
      @data = File.open(@todo_list).read
    end
    @today = DateTime.now.strftime '%d-%m-%Y' # instance var @today holds the day's date in dd-mm-yyyy format
  end

  # method list returns an array through instance var @data with all ToDo items (hashes)
  def list
    @data
  end

  # method to add a todo_item instance object onto the @data instance variable
  def add(todo_item)
    @data << todo_item
  end

  # complete method returns a ToDoItem object with it's default value of complete changed from false to true
  def complete(id)
    @data.delete_if { |todo_item| todo_item[:id] == id }
    @data
  end

  # method send_email_digest sends an email to the email outlined in the local var 'to' and returns
  # a status code that should be 202 (accepted response). Sendgrid will then process the request.
  def send_email_digest
    from = Email.new(email: 'donotreply@shtda.com')
    to = Email.new(email: EMAIL)
    subject = 'Here is your to-do digest!'
    content = Content.new(type: 'text/plain', value: @data.join(', '))
    mail =  Mail.new(from, subject, to, content)

    sg = SendGrid::API.new(api_key: ENV['SENDGRID_API_KEY'])
    response = sg.client.mail._('send').post(request_body: mail.to_json)
    puts response.status_code
    if response.status_code == '400'
      puts "You can't send empty to-do lists. Add something to this to-do list before trying to email it again"
    elsif response.status_code == '202'
      puts "Your email has been sent! If it doesn't arrive in your inbox soon it's Sendgrid's fault :P "
    else
      puts response.parsed_body
      puts response.headers
    end
  end
end

# TESTTODOLIST = ToDoList.new('/Users/Santiago/desktop/ca_workbook/shtda1/to_do_lists/test_todo_list.txt')
TESTTODOLIST = ToDoList.new
# test_email.send_email_digest

pp TESTTODOLIST.list

TESTTODOLIST.send_email_digest

TESTTODOLIST.add(TODOITEM.create(1, 'bruh', 'bruh'))
TESTTODOLIST.add(TODOITEM.create(2, 'bruh2', 'bruh2'))
TESTTODOLIST.add(TODOITEM.create(3, 'bruh3', 'bruh3'))

pp TESTTODOLIST.list

TESTTODOLIST.complete(2)

pp TESTTODOLIST.list

TESTTODOLIST.add(TODOITEM.create(4, 'bruh4', 'bruh4'))

pp TESTTODOLIST.list

TESTTODOLIST.send_email_digest
