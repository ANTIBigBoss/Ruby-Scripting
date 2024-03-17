require 'erb'

# Convert Celsius to Fahrenheit
def celsius_to_fahrenheit(celsius)
  (celsius * 9.0 / 5.0) + 32.0
end

# Convert Celsius to Kelvin
def celsius_to_kelvin(celsius)
  celsius + 273.15
end

# Prompt for temperature inputs
puts 'Start temperature (Celsius):'
start_temp = gets.to_f
puts 'End temperature (Celsius):'
end_temp = gets.to_f
puts 'Temperature increment:'
increment = gets.to_f

# Create an array of temperatures in Celsius
temperatures = (start_temp..end_temp).step(increment).to_a

# ERB Template for the HTML table with Bootstrap styling
template = <<-EOF
<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>Temperature Conversions</title>
  <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css">
</head>
<body>
  <br>
  <div class="container-sm">
    <table class="table table-hover">
      <thead class="table-warning">
        <tr>
          <th>Celsius</th>
          <th>Fahrenheit</th>
          <th>Kelvin</th>
        </tr>
      </thead>
      <tbody>
        <% temperatures.each do |celsius| %>
          <tr>
            <td><%= '%.1f' % celsius %></td>
            <td><%= '%.1f' % celsius_to_fahrenheit(celsius) %></td>
            <td><%= '%.1f' % celsius_to_kelvin(celsius) %></td>
          </tr>
        <% end %>
      </tbody>
    </table>
  </div>
</body>
</html>
EOF

erb = ERB.new(template)
html = erb.result(binding)

# Output the result to the console
puts html

# Save the result to a file on e: drive
File.open("e:\\temperature_table.html", "w") { |file| file.write(html) }
