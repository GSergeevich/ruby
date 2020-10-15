# frozen_string_literal: true

year = ARGV[0].to_i
month = ARGV[1].to_i
day = ARGV[2].to_i

age = (Time.new - Time.new(year, month, day)).to_i / 31_536_000
puts age
