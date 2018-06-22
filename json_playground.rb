require 'json'

json = File.read('api_data.json')
obj = JSON.parse(json)

puts obj["query"]["results"]["channel"]["item"]["condition"]["text"]

