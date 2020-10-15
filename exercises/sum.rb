# frozen_string_literal: true

terms = ARGV
sum = 0
terms.each do |term|
  sum += term.to_i
end

puts sum
