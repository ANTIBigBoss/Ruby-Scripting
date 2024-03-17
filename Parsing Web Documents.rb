require 'net/http'

def get_web_document(url)
  uri = URI.parse(url)
  response = Net::HTTP.get_response(uri)
  case response
  when Net::HTTPSuccess then
    return response.body
  when Net::HTTPRedirection then
    return get_web_document(response['Location'])
  else
    return 'INVALID'
  end
end

puts get_web_document('http://www.rubyinside.com/test.txt')
puts get_web_document('http://www.rubyinside.com/non-existent')
