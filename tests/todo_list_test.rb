# frozen_string_literal: true

require 'test/unit' # https://www.rubydoc.info/gems/test-unit/2.3.1/Test/Unit
require '/Users/Santiago/desktop/ca_workbook/shtda1/src/todo_list' # importing ToDoList class
require '/Users/Santiago/desktop/ca_workbook/shtda1/src/todo_item' # importing ToDoItem class

# Setup tests for the ToDo_List class
class ToDoListTest < Test::Unit::TestCase
  # instance variable @todo_list created to store an instance of ToDoList class
  def setup
    @todo_list = ToDoList.new
  end

  # tests that ToDoList correctly adds a newly created ToDoItem to the to-do list instance
  def test_todo_list_output
    @todo_list.add(TODOITEM.create(1, 'test1', 'test_due_date1'))
    @todo_list_output = @todo_list.list
    assert_equal([{:complete=>false,:description=>"test1",:due_date=>"test_due_date1",:id=>1}], @todo_list_output)
  end
end
