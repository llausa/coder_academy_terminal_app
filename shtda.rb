# frozen_string_literal: true

require 'date'
require 'json'
require 'sendgrid-ruby'
require 'pp'
include SendGrid

puts "Welcome to Santiago's To-Do App\n"


app_on = true
t = DateTime.now
@today = t.strftime '%d-%m-%Y'
File.new("#{@today}.txt", 'a')
def list
  data = File.open("#{@today}.txt").read
  data.each_line.map { |line| JSON.parse(line) }
end

@data = list

def add_to_do(name, due_date)
  max_id = @data.max_by { |arr| arr['id'] }
  max_id = max_id ? max_id['id'] + 1 : 1
  pp to_do_item = { 'id' => max_id, 'name' => name, 'due_date' => due_date }
  @data.push(to_do_item)
  save_item(to_do_item.to_json)
  # pp @data
 end

def complete_to_do(index)
  # @data.delete!(@data['index']=  index)
  @data.each_with_index { |to_do_item, _i| puts to_do_item.to_s if to_do_item['index'] == index } # @data.slice!(i) if to_do_item['index'] == index  }
  # File.write("#{@today}.txt", @data.map(&:to_json).join("\n"), mode: 'w+')
  # pp @data.class
end

def send_email
  from = Email.new(email: 'donotreply@shtda.com')
  to = Email.new(email: 'santiago.chamon@gmail.com')
  subject = "Here is your #{@today} to-do digest!"
  content = Content.new(type: 'text/plain', value: @data.join(",\n"))
  mail =  Mail.new(from, subject, to, content)

  sg = SendGrid::API.new(api_key: ENV['SENDGRID_API_KEY'])
  response = sg.client.mail._('send').post(request_body: mail.to_json)
  puts response.status_code
  puts response.body
  puts response.headers
end

def save_item(item)
  File.write("#{@today}.txt", "\n#{item}", mode: 'a')
end

if File.exist?("#{@today}.txt")
  # code that runs when today.txt exists

  while app_on
    puts "
What would you like to do? Options:
- to-do list,
- add to-do,
- complete to-do,
- send email digest
- help
- exit"
    user_input = gets.chomp.to_s.downcase

    if user_input == 'to-do list'
      pp @data # maybe loop through list?
    elsif user_input == 'add to-do'
      puts 'name: '
      name_param_input = gets.chomp.to_s.downcase
      puts 'due date (optional): '
      due_date_param_input = gets.chomp.to_s.downcase

      add_to_do(name_param_input, due_date_param_input)

    elsif user_input == 'complete to-do'
      puts 'at what index? '
      index_param_input = gets.chomp

      complete_to_do(index_param_input)
    elsif user_input == 'send email digest'
      send_email
    elsif user_input == 'help'
      puts 'help'
    elsif user_input == 'exit'
      puts 'bye'
      app_on = false
    else
      puts 'Invalid Command'
    end
  end
else
  File.new("#{@today}.txt", 'w+')
end
