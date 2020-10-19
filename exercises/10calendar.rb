
def days_to_seconds(number)
  number * 24 * 60 * 60
end

def days_in_month(date)
  now = Time.now
  i = date.mday
  tdate = Time.at(now.to_i + days_to_seconds(i))
  while tdate.month == now.month
   tdate = Time.at(tdate.to_i + days_to_seconds(i))
  end
  date.mday + i
end

def last_day_of_month(date)
  if Time.at(date.to_i + days_to_seconds(31 - date.mday)).month == date.month
    31
  elsif Time.at(date.to_i + days_to_seconds(30 - date.mday)).month == date.month
    30
  elsif Time.at(date.to_i + days_to_seconds(29 - date.mday)).month == date.month
    29
  else
    28  
  end
end

def translate(day)
  days_rus = {Sun: 'Вс',Mon: 'Пн',Tue: 'Вт',Wed: 'Ср',Thu: 'Чт',Fri: 'Пт',Sat: 'Сб'}
  days_rus[day]
end

year = %w[Январь Февраль Март Апрель Май Июнь Июль Август Сентябрь Октябрь Ноябрь Декабрь]
days = %w[Sun Mon Tue Wed Thu Fri Sat]
days_hash = {Sun: [],Mon: [],Tue: [],Wed: [],Thu: [],Fri: [],Sat: []}

now = Time.now
date = Time.at(now.to_i - days_to_seconds(now.mday - 1)) #first day of month 
p last_day = last_day_of_month(now)

puts format('%s  %s',year[now.month - 1],now.year)

week_end = 0   
begin 
  day = date.strftime("%a").to_sym
  days_hash[day][0] = translate(day)
  days_hash[day][1] = ' ' if week_end == 1
  week_end = 1 if date.wday == 6

  i = date.mday
  while i <= last_day
    days_hash[day] << i
    i += 7
  end

  date = Time.at(date.to_i + days_to_seconds(1))

end while date.mday <= 7

days.each do |day|
  day = day.to_sym
  days_hash[day].each do |day|
    print format('%2s ',day)
  end
  print "\n"
end
