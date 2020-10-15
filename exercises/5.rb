class Point
  def set_x(x)
    @x = x
  end  

  def set_y(y)
    @y = y
  end

  def x
    @x
  end

  def y
    @y
  end
end

point1 = Point.new
point2 = Point.new

point1.set_x(3)
point1.set_y(6)

point2.set_x(-1)
point2.set_y(5)

puts Math.sqrt((point1.x - point2.x)**2 + (point1.y - point2.y)**2)

array = $LOAD_PATH
count = 0
array.each do |path|
  count +=1
end

p count

class Car

  def set_wheels(wheels)
    @wheels = wheels
  end

  def set_carrying(carrying)
    @carrying = carrying
  end

  def set_trailer(trailer)
    @trailer = trailer
  end

  def set_passengers(passengers)
    @passengers = passengers
  end

  def wheels
    @wheels
  end

  def carrying
    @carrying
  end

  def trailer
    @trailer
  end

  def passengers
    @passengers
  end

end

taxi = Car.new

taxi.set_wheels(4)
taxi.set_trailer(false)
taxi.set_passengers(4)
taxi.set_carrying('low')

puts taxi.instance_variables





