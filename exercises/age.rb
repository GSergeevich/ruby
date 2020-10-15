year = ARGV[0].to_i
month = ARGV[1].to_i
day = ARGV[2].to_i

age = (Time.new - Time.new(year,month,day)).to_i / 31536000
puts age
