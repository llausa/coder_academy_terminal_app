# frozen_string_literal: true

require 'test/unit' # https://www.rubydoc.info/gems/test-unit/2.3.1/Test/Unit
require_relative '../src/todo_item' # importing ToDoItem class

# Set up the tests for the ToDoItem class
class ToDoItemTest < Test::Unit::TestCase
  # instance variable @todo_item created to store an instance of ToDoItem class
  def setup
    @todo_item = ToDoItem.new
  end

  # testing output of create method of ToDoItem class
  def test_create_todo_item
    todo_item_create_output = @todo_item.create(1, 'Pass the test', 'today')
    assert_equal({:complete=>false, :description=>"Pass the test", :due_date=>"today", :id=>1}, todo_item_create_output)
  end
end
