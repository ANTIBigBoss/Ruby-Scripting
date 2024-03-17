# Ruby program to calculate probability of a call lasting less than t minutes

# Euler's number
e = Math::E

# Average call length
average_call_length = 2.0

# Method to calculate probability
def calculate_probability(t, a)
  1 - Math.exp(-t/a)
end

# Display probabilities for calls lasting less than 1 to less than 10 minutes
puts "t(minutes) \t Probability(call lasts less than t minutes)"
(1..10).each do |t|
  probability = calculate_probability(t, average_call_length)
  puts "#{t} \t\t #{'%.4f' % probability}"
end
