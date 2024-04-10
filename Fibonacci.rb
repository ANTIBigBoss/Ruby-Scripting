def fib(n)
  return n if n == 0 || n == 1
  fib(n-1) + fib(n-2)
end

# To display the sequence up to the 10th term
(0..9).each do |number|
  print fib(number).to_s + " "
end
