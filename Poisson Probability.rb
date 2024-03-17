# Ruby script to calculate Poisson probability

# Method to calculate factorial
def factorial(n)
  (1..n).reduce(1, :*)
end

# Method to calculate Poisson probability
def poisson_probability(lam, x)
  (lam**x * Math.exp(-lam)) / factorial(x)
end

# Assuming λ (lambda) is 10 (for example, 10 customers per hour)
lambda = 10

# Display probabilities for x = 0 to 10
puts "x \t P(x)"
(0..10).each do |x|
  probability = poisson_probability(lambda, x)
  puts "#{x} \t #{'%.4f' % probability}"
end