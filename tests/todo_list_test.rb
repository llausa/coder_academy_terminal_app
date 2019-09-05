# frozen_string_literal: true

require 'test/unit' # https://www.rubydoc.info/gems/test-unit/2.3.1/Test/Unit
require '/Users/Santiago/desktop/ca_workbook/shtda1/todo_list' # importing ToDoList class
require '/Users/Santiago/desktop/ca_workbook/shtda1/todo_item' # importing ToDoItem class

# Setup tests for the ToDo_List class
class ToDoListTest < Test::Unit::TestCase
  # instance variable @todo_list created to store an instance of ToDoList class
  def setup
    @todo_list = ToDoList.new
  end

  def test_todo_list_output
    @todo_list_output = @todo_list.list
    assert_equal(File.open('/Users/Santiago/desktop/ca_workbook/shtda1/to_do_lists/test_todo_list.txt').read, @todo_list_output)
  end
end
