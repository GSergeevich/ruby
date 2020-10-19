# frozen_string_literal: true

p "Arguments: #{ARGV}"

a,b,c = ARGV.map(&:to_i)

biggest = if a > b 
            a > c ? a : c 
          else
            b > c ? b : c
          end

puts biggest

