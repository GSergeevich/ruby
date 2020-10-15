terms = ARGV
sum = 0
terms.each do |term|
  sum = sum + term.to_i
end

puts sum

