class ComplexMath
  attr_reader :real, :imaginary

  def initialize(real, imaginary)
    @real = real
    @imaginary = imaginary
  end

  def add(other)
    ComplexMath.new(@real + other.real, @imaginary + other.imaginary)
  end

  def multiply(other)
    # (a+bi)(c+di) = (ac−bd) + (ad+bc)i
    new_real = @real * other.real - @imaginary * other.imaginary
    new_imaginary = @real * other.imaginary + @imaginary * other.real
    ComplexMath.new(new_real, new_imaginary)
  end

  def magnitude
    Math.sqrt(@real**2 + @imaginary**2)
  end

  def to_s
    "#{@real} + #{@imaginary}i"
  end
end

# Example usage:
c1 = ComplexMath.new(3, 2)
c2 = ComplexMath.new(1, 7)

sum = c1.add(c2)
product = c1.multiply(c2)
magnitude_c1 = c1.magnitude

puts "First complex number: #{c1}"
puts "Second complex number: #{c2}"
puts "Sum: #{sum}"
puts "Product: #{product}"
puts "Magnitude of the first complex number: #{magnitude_c1}"
