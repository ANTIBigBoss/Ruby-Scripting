class Square
  def initialize(length)
    @length = length
  end

  def area
    @length * @length
  end
end

# Creating instances of Square
a = Square.new(4)
b = Square.new(5)

# Output the area of each instance
puts a.area
puts b.area