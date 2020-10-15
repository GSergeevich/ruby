# frozen_string_literal: true

number = ARGV[0].to_i
factorial = 1
(1..number).each do |member|
  factorial = member * factorial
end

puts factorial
