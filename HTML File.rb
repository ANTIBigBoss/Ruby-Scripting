require 'erb'

langArray = ['Python', 'Ruby', 'PowerShell']

template = <<-EOF
<% langArray.each_with_index do |lang, index| %>
  <p>Language <%= index + 1 %>: <%= lang %></p>
<% end %>
EOF

html = ERB.new(template).result
puts html

# The following line saves the HTML to a file. It's path specific to Windows, change accordingly for other OS.
File.open("e:\page.html", "w") { |f| f.write(html) }
