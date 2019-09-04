# frozen_string_literal: true

require 'test/unit' # https://www.rubydoc.info/gems/test-unit/2.3.1/Test/Unit
require '/Users/Santiago/desktop/ca_workbook/shtda1/todo_item' # importing ToDoItem class

# Set up the tests for the ToDoItem class
class ToDoItemTest < Test::Unit::TestCase
  # instance variable @todo_item created to store an instance of ToDoItem class
  def setup
    @todo_item = ToDoItem.new
  end

  # testing output of add method of ToDoItem class
  def test_add_todo_item
    todo_item_add_output = @todo_item.add(1, 'Pass the test', 'today')
    assert_equal('{"id":1,"description":"Pass the test","due_date":"today","complete":false}', todo_item_add_output)
  end

  # testing output of complete method of ToDoItem class
  def test_complete_todo_item
    todo_item_test = @todo_item.add(1, 'Pass the test', 'today')
    todo_item_complete_output = @todo_item.complete(todo_item_test)
    assert_equal('{"id":1,"description":"Pass the test","due_date":"today","complete":true}', todo_item_complete_output)
  end
end
