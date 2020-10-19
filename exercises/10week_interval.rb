date = Time.now
day_in_seconds = 24 * 60 * 60

until date.wday == 0
  date = Time.at(date.to_i - day_in_seconds)
end 

week_in_seconds = 7 * 24 * 60 * 60
week_later = Time.at(date.to_i + week_in_seconds)
puts format('%s.%s.%s-%s.%s.%s', date.day,date.mon,date.year,week_later.day,week_later.mon,week_later.year)


