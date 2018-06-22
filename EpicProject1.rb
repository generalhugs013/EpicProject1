require 'net/http'

endpoint = [INSERT ENDPOINT HERE]
uri = URI(endpoint)
response = Net::HTTP.get(uri) 

puts res