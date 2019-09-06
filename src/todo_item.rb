# frozen_string_literal: true

# Initializing ToDoItem class which holds the outline for each To-Do Item in the app
class ToDoItem
  # create method returns a hash of a to-do item with the following keys id, description, due_date and complete and their user-submitted values
  # id takes an Integer, description takes a String, due_date also takes a String and complete is automatically set to false
  def create(id, description, due_date)
    { 'id': id, 'description': description, 'due_date': due_date, 'complete': false }
  end

  # complete method returns a ToDoItem object with it's default value of complete changed from false to true
  # superfluous but available if needed
  def complete(to_do_item)
    response = to_do_item
    response[:complete] = true
    response
  end
end

# ToDoItem class instance spun up and set to TODOITEM constant - will be used in shtda.rb file
TODOITEM = ToDoItem.new
