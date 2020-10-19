arr = %w[Иванов Петров Сидоров Алексеева Казанцев Антропов Кузнецов Соловьёв Кошкина]


puts 'Array.sort :'
puts '---------'
puts arr.sort

i = arr.length - 1

while i > 0
  j = 0
  while j < i 
    if arr[j] > arr[j + 1]
      arr[j],arr[j + 1] = arr[j + 1],arr[j]
    end
    j +=1
  end
  i -=1
end

puts
puts 'Hand crafted "bubble-sort":'
puts '---------'
puts arr
