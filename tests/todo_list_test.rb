# frozen_string_literal: true

require 'test/unit' # https://www.rubydoc.info/gems/test-unit/2.3.1/Test/Unit

# Setup tests for the ToDo_List class
class ToDoListTest < Test::Unit::TestCase
  # instance variable @todo_list created to store an instance of ToDoList class
  def setup
    @todo_list = ToDoList.new
  end

  def test_todo_list_output
    @todo_list_output = @todo_list.list
    assert_equal('', @todo_list_output)
  end
end
