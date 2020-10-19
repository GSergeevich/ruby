type = case ARGV[0]
  when String then 'Строка'
  when Integer then 'Целое число'
  when Float then 'Вещественное число'
  else 
     'Тип не установлен'   
  end  
    
p type
