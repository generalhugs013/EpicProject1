require 'net/http'

endpoint = "www.google.com"
uri = URI(endpoint)
puts uri
response = Net::HTTP.get(uri) 

puts response



