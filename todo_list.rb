# frozen_string_literal: true

require 'json' # https://ruby-doc.org/stdlib-2.6.3/libdoc/json/rdoc/JSON.html

# Initializing ToDoList class which holds the outline for the To-Do Lists in the app
class ToDoList
  def initialize
    @data = []
  end

  def list
    @data = File.open("to_do_lists/#{@today}.txt").read
    @data.each_line.map { |line| JSON.parse(line) }
  end
end
