puts 100.to_s(2).class
puts 100.to_s(2)
puts 0xffcc00.class
puts 0xffcc00.to_s(10).to_i
puts 0xffcc00.to_s(10).to_i.class
puts 0xffcc00.to_s(10).class
p (1..5).first
p (1...5).first
puts Range.new(1,5)
puts Range.new(1,5,true)
:white
colors = %i[red green blue yellow :white]
p colors
