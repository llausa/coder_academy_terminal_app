# frozen_string_literal: true

require_relative 'todo_item' # importing ToDoItem class
require_relative 'configuration' # importing constants EMAIL and NAME from configuration.rb

require 'sendgrid-ruby' # https://github.com/sendgrid/sendgrid-ruby
require 'pp' # https://ruby-doc.org/stdlib-2.4.1/libdoc/pp/rdoc/PP.html

# Initializing ToDoList class which holds the outline for the To-Do List in the app
class ToDoList
  include SendGrid
  # when ToDoList is initialized, it sets an empty array to instance var @data
  def initialize
    @data = []
  end

  # method list returns an array through instance var @data with all ToDo items (hashes) inside @data
  def list
    @data
  end

  # method to add a todo_item instance object onto the @data instance variable
  # returns update @data array
  def add(todo_item)
    @data << todo_item
  end

  # complete method completely removes a todo_item from the @data array if the user wants to mark it as "complete"
  def complete(id)
    # the delete_if method loops through each hash in the the @data array and deletes a hash if
    # it's :id key is equal to the param id that is passed to the method - this method is called in the
    # shtda.rb file
    @data.delete_if { |todo_item| todo_item[:id] == id }
    @data #return updated @data array
  end

  # method send_email_digest sends an email to the email address outlined in the class object instance var inside 'to' and returns
  # a status code that should be 202 (accepted response). Sendgrid will then process the request.
  # error handling also happens inside the method
  def send_email_digest
    from = Email.new(email: "donotreply@shtda.com")
    to = Email.new(email: USER.email)
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
