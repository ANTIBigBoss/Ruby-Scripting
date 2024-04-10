str = "Arduino Uno uses ATmega328 8-bit controller that has 32 16-bit registers"
numbers = str.scan(/\d+/) # Extracts all the numbers from the string
sum = numbers.map(&:to_i).reduce(0, :+) # Converts them to integers and calculates the sum

# Output
puts numbers.inspect
puts "Sum = #{sum}"
