def fibonachi(number)
  @fibs ? @fibs : @fibs = [0,1]
  return @fibs if @fibs[-1] >= number
  @fibs << @fibs[-1] + @fibs[-2]
  fibonachi(number)
end


p fibonachi(7)
p fibonachi(17711)
p fibonachi(102334155)
