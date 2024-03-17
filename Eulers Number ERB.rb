require 'erb'

# Euler's number
e = Math::E

# Average call length
average_call_length = 2.0

# Method to calculate probability
def calculate_probability(t, a)
  1 - Math.exp(-t/a)
end

# Compute probabilities for calls lasting less than 1 to less than 10 minutes
probabilities = {}
(1..10).each do |t|
  probabilities[t] = calculate_probability(t, average_call_length)
end

# ERB Template for the HTML page
template = <<-EOF
<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>Call Duration Probabilities</title>
  <style>
    body { font-family: Arial, sans-serif; }
    table { width: 100%; border-collapse: collapse; }
    th, td { padding: 8px; text-align: left; border-bottom: 1px solid #ddd; }
    th { background-color: #f2f2f2; }
  </style>
</head>
<body>
  <h2>Probability of Call Lasting Less Than t Minutes</h2>
  <table>
    <tr>
      <th>t(minutes)</th>
      <th>Probability (call lasts less than t minutes)</th>
    </tr>
    <% probabilities.each do |t, probability| %>
      <tr>
        <td><%= t %></td>
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

# Save the result to a file
File.open("e:\\call_probabilities.html", "w") { |file| file.write(html) }
