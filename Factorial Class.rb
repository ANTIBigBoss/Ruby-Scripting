class Factorial
  def initialize(n)
    @n = n
  end

  def fact
    i = 1
    f = 1
    while i <= @n
      f *= i
      i += 1
    end
    f
  end
end

# Creating an instance of Factorial
result = Factorial.new(5)

# Output the factorial of the number
puts result.fact
