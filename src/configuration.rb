# frozen_string_literal: true

if ARGV.length == 2
  @email = ARGV[0]
  @name = ARGV[1]
else
  puts "Please pass 2 args. The first one should be the complete email and the second one a name."
end

EMAIL = @email || 'santiago@gmail.com'
NAME = @name || 'Santiago'
