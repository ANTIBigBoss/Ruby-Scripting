require 'erb'

template = <<-EOF
<% 1.upto(3) do |i| %>
  <p>Iteration: <%= i %></p>
<% end %>
EOF

puts ERB.new(template).result
