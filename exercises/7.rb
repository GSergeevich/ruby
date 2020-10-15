oper = 3
power = 2
for pow in 1..(power-1) do
  oper *= oper 
  p oper
end

p oper

########
odd_num = 7
even_num = 6


puts format("Is %d odd? It is %s",odd_num, odd_num & 1 > 0 ) 
puts format("Is %d odd?It is %s",even_num, even_num & 1 > 0) 

########

fst = 10
snd = 20

puts format( "fst = %d , snd = %d",fst,snd)

fst,snd = snd,fst

puts format( "fst = %d , snd = %d",fst,snd)

########
pi = 3.14159265358979

p 'pi: %.2f' % pi

########

