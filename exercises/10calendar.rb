def days_to_seconds(number)
  number * 24 * 60 * 60
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
  days_rus = { Sun: 'Вс', Mon: 'Пн', Tue: 'Вт', Wed: 'Ср', Thu: 'Чт', Fri: 'Пт', Sat: 'Сб' }
  days_rus[day]
end

year = %w[Январь Февраль Март Апрель Май Июнь Июль Август Сентябрь Октябрь Ноябрь Декабрь]
days = %w[Sun Mon Tue Wed Thu Fri Sat]
days_hash = { Sun: [], Mon: [], Tue: [], Wed: [], Thu: [], Fri: [], Sat: [] }

now = Time.now
date = Time.at(now.to_i - days_to_seconds(now.mday - 1)) # first day of month
last_day = last_day_of_month(now) # last day of month

puts format('  %<month>s  %<year>s', month: year[now.month - 1],year: now.year)

first_week = 1 # is this a first week of a month ? (flag)
loop do
  day = date.strftime('%a').to_sym # key for days_hash
  days_hash[day][0] = translate(day) # place day name(translated to russian)
  days_hash[day][1] = ' ' if first_week == 0 # place space if curent-day array start not from first week of the month 
  first_week = 0 if date.wday == 6 # last day of first week, ended

  i = date.mday # number of a current day (in month)
  while i <= last_day # until month ended
    days_hash[day] << i # add day number to their hash
    i += 7 # next number of currnet day of week 
  end

  date = Time.at(date.to_i + days_to_seconds(1)) # next day
  break unless date.mday <= 7 # all 7 days of week passed
end

days.each do |day|
  day = day.to_sym
  days_hash[day].each do |day|
    print format('%2s ', day)
  end
  print "\n"
end
