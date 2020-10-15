require './hello'

hello = HelloWorld.new
hello.greeting

DAY1 = 'monday'
DAY2 = 'tuesday'
DAY3 = 'wednesday'
DAY4 = 'thursday'
DAY5 = 'friday'
DAY6 = 'saturday'
DAY7 = 'sunday'

WEEK = Array.new
WEEK << DAY1
WEEK << DAY2
WEEK << DAY3
WEEK << DAY4
WEEK << DAY5
WEEK << DAY6
WEEK << DAY7

(1..7).each do |number|
  puts WEEK[number -1]
end


p DAY1.methods
p DAY1.class

DAY1
