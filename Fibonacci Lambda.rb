fib = -> (n) {
  a, b = 0, 1
  n.times { a, b = b, a + b }
  a
}

# To display the sequence up to the 10th term
(0..10).each do |number|
  print "#{fib.call(number)} "
end
