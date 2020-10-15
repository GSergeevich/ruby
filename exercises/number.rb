p "Arguments: #{ARGV}"

number = ARGV[0].to_i
if (number % 2 ) > 0
  puts "#{number} is an odd"
else
  puts "#{number} is an even"
end

