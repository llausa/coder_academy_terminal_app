# frozen_string_literal: true

require 'json' # https://ruby-doc.org/stdlib-2.6.3/libdoc/json/rdoc/JSON.html
require 'date' # add link to date module

# Initializing ToDoList class which holds the outline for the To-Do Lists in the app
class ToDoList
  # when ToDoList is initialized, it takes a txt file that holds json hashes of ToDoItem(s)
  # through the todo_list parameter
  def initialize(todo_list)
    @todo_list = todo_list # todo_list parameter assigned to instance variable @todo_list
    @data = [] # empty array assigned to instance variable @data. This will hold the hashes of ToDo items
    @today = DateTime.now.strftime '%d-%m-%Y' # instance var @today holds the day's date in dd-mm-yyyy format
  end

  # method list returns an array through instance var @data with all ToDo items (hashes)
  # parsed from JSON onto String
  def list
    @data = File.open(@todo_list).read
    @data.each_line.map { |line| JSON.parse(line) }
    @data
  end
end
