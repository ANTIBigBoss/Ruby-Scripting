require 'rubygems'
require 'markaby'

m = Markaby::Builder.new
m.html do
  head { title 'Factorial' }
  body do
    h1 'Factorial'
    h2 'of a positive integer'
    p %q{n! = n(n - 1)(n - 2)(n - 3)...(3)(2)(1)}
    h2 'Factorial Algorithms'
    p 'Two methods of computing factorial:'
    ul do
      li 'Iteratively'
      li 'Recursively'
    end
  end
end

File.open("e:\\markaby_example.html", "w") { |f| f.write m }
