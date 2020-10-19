puts 'Введите первое число:'
fst = gets.to_i

begin 
  puts  'Введите второе число(отличное от нуля):'
  snd = gets.to_i
end while snd == 0

puts fst / snd

