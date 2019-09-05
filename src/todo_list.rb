# frozen_string_literal: true

require '/Users/Santiago/desktop/ca_workbook/shtda1/src/todo_item' # importing ToDoItem class
require '/Users/Santiago/desktop/ca_workbook/shtda1/src/configuration' # importing constants EMAIL and NAME from configuration.rb

require 'sendgrid-ruby' # https://github.com/sendgrid/sendgrid-ruby
require 'pp'

# Initializing ToDoList class which holds the outline for the To-Do Lists in the app
class ToDoList
  include SendGrid
  # when ToDoList is initialized, it takes a txt file that holds json hashes of ToDoItem(s)
  # through the todo_list parameter
  def initialize
    @data = []
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
    from = Email.new(email: "#{NAME}@shtda.com")
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
