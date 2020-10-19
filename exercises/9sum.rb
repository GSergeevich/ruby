def sum(*args)
  sum = 0 
  args.each do |arg|
   sum += arg
  end
  sum
end


p sum(1)
p sum(2,5,7)
