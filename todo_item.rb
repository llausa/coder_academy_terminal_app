# frozen_string_literal: true

require 'json' # https://ruby-doc.org/stdlib-2.6.3/libdoc/json/rdoc/JSON.html

# Initializing ToDoItem class which holds the outline for each To-Do Item in the app
class ToDoItem
  # add method returns to-do items with parameters id, description, due_date and complete in the format necessary
  # id takes an Integer, description takes a String, due_date also takes a String and complete is automatically set to false
  def add(id, description, due_date)
    { 'id' => id, 'description' => description, 'due_date' => due_date, 'complete' => false }.to_json
  end

  # complete method returns a ToDoItem object with it's default value of complete changed from false to true
  def complete(to_do_item)
    response = JSON.parse(to_do_item)
    response['complete'] = true
    response.to_json
  end
end
