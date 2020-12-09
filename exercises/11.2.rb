colors = []

puts 'Введите название цвета или "стоп" для завершения ввода:'

loop do 
  enter = gets.chomp
  enter == 'стоп' ? break : colors << enter   
end

p colors.uniq.reject(&:empty?).sort