# frozen_string_literal: true

require 'test/unit' # https://www.rubydoc.info/gems/test-unit/2.3.1/Test/Unit
require '/Users/Santiago/desktop/ca_workbook/shtda1/todo_list' # importing ToDoList class

# Setup tests for the ToDo_List class
class ToDoListTest < Test::Unit::TestCase
  # instance variable @todo_list created to store an instance of ToDoList class
  def setup
    @todo_list = ToDoList.new('/Users/Santiago/desktop/ca_workbook/shtda1/to_do_lists/test_todo_list.txt')
  end

  def test_todo_list_output
    @todo_list_output = @todo_list.list
    assert_equal(File.open('/Users/Santiago/desktop/ca_workbook/shtda1/to_do_lists/test_todo_list.txt').read, @todo_list_output)
  end

  def test_todo_list_complete_item
    @todo_list_first_item = @todo_list.complete(@todo_list.list[0])
    @todo_list_second_item = @todo_list.list[1]
    assert_equal(@todo_list_first_item, @todo_list_second_item)
  end
=begin
  def test_todo_list_email_response
    @todo_list.list
    @todo_list_email_response = @todo_list.send_email_digest
    assert_equal('202', @todo_list_email_response)
  end
=end
end
