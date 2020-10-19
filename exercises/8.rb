class ForMethod
  
  def colors(number)
   colors = %w[red green violet yellow blue white black]
   colors[number - 1]
  end

end

color = ForMethod.new
p color.colors(2)
p color.colors(8)


#####


