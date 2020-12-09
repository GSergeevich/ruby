# frozen_string_literal: true

require './hello'

#hello = HelloWorld.new
#hello.greeting

DAY1 = 'monday'
DAY2 = 'tuesday'
DAY3 = 'wednesday'
DAY4 = 'thursday'
DAY5 = 'friday'
DAY6 = 'saturday'
DAY7 = 'sunday'

WEEK = DAY1,DAY2,DAY3,DAY4,DAY5,DAY6,DAY7

WEEK.each {|day| p day}

p DAY1.methods
p DAY1.class

DAY1
