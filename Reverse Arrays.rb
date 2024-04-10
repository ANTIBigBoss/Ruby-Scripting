original_array = [10, 20, 30, 40, 50, 60, 70]
reverse_array = original_array.reverse # This creates a new array that's the reverse of the original

puts "Original array:"
puts original_array.inspect

puts "Reverse array:"
reverse_array.each_with_index do |item, index|
  print item.to_s
  print " -> " unless index == reverse_array.size - 1
end
