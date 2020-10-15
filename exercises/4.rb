# frozen_string_literal: true

pi = 3.1415926535

pi_s = pi.to_s
dot_index = pi_s.index('.')
range = Range.new(0, dot_index + 3)
p pi_s[range].to_f

#######
week = %i[понедельник вторник среда четверг пятница суббота воскресенье]
puts week

#######

colors = { red: 'красный', blue: 'синий', green: 'зелёный' }
puts colors[:red]

#######

night = 0..6
morning = 6..12
day = 12..18
evening = 18..24

puts night.include?(Time.new.hour)
puts evening.include?(Time.new.hour.to_i)
puts evening.include?(21)
puts evening.class
p Time.new.hour.to_i
p Time.new.hour

########

rainbow = %w[red green violet yellow blue white black]
p rainbow.sample

########
dot1 = { x: 3, y: 7 }
dot2 = { x: -1, y: 5 }

distance = ((dot1[:x] - dot2[:x])**2) + ((dot1[:y] - dot2[:y])**2)
p distance
p Math.sqrt(distance.to_f)
p dot1.methods
p 'Methods:'
p dot1.methods
p dot1.instance_variables
