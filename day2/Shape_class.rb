class Shape
  attr_accessor :length, :width
end

class Rectangle < Shape
  def area 
    length * width
  end
  
  def perimeter
    2*length + 2*width
  end

  def respond
    puts "The area is #{area}"
    return "The perimeter is #{perimeter}"
  end
end