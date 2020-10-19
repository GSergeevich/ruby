def leap?(year = Time.now.year)
  return false if year % 4 != 0
  year % 100 == 0 ? year % 400 == 0 : true
end

p leap? 
p leap?(2021) 
p leap?(1600) 
p leap?(1700) 



