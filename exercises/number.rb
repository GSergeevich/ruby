# frozen_string_literal: true

p "Arguments: #{ARGV}"

number = ARGV[0].to_i
if (number % 2).positive?
  puts "#{number} is an odd"
else
  puts "#{number} is an even"
end
