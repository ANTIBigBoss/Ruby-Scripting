require 'erb'

# Method to calculate factorial
def factorial(n)
  n == 0 ? 1 : (1..n).reduce(1, :*)
end

# Method to calculate Poisson probability
def poisson_probability(average_rate, x)
  (average_rate**x * Math.exp(-average_rate)) / factorial(x)
end

# Assuming λ (average_rate) is 10 (for example, 10 customers per hour)
average_rate = 10

# Compute probabilities for x = 0 to 10
poisson_probabilities = {}
(0..10).each do |x|
  poisson_probabilities[x] = poisson_probability(average_rate, x)
end

# ERB Template for the HTML page
template = <<-EOF
<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>Poisson Distribution Probabilities</title>
  <style>
    body { font-family: Arial, sans-serif; }
    table { width: 100%; border-collapse: collapse; }
    th, td { padding: 8px; text-align: left; border-bottom: 1px solid #ddd; }
    th { background-color: #f2f2f2; }
  </style>
</head>
<body>
  <h2>Poisson Distribution Probabilities (λ = <%= average_rate %>)</h2>
  <table>
    <tr>
      <th>x</th>
      <th>P(x)</th>
    </tr>
    <% poisson_probabilities.each do |x, probability| %>
      <tr>
        <td><%= x %></td>
        <td><%= '%.4f' % probability %></td>
      </tr>
    <% end %>
  </table>
</body>
</html>
EOF

erb = ERB.new(template)
html = erb.result(binding)

# Output the result to the console
puts html

# Save the result to an HTML file
File.open("e:\\poisson_distribution.html", "w") { |file| file.write(html) }
