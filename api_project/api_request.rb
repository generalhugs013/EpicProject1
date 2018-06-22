#require 'net/http'
#require 'json'
#require 'pry'

#endpoint = "https://query.yahooapis.com/v1/public/yql?q=select%20*%20from%20weather.forecast%20where%20woeid%20in%20(select%20woeid%20from%20geo.places(1)%20where%20text%3D%22nome%2C%20ak%22)&format=json&env=store%3A%2F%2Fdatatables.org%2Falltableswithkeys"
#uri = URI(endpoint)
#response = Net::HTTP.get(uri) 

#binding.pry

#puts JSON.parse(response)


require 'net/http'

url = URI.parse('http://www.example.com/index.html')
req = Net::HTTP::Get.new(url.to_s)

req.basic_auth 'marvel_comics_api', '4dd250f38f98149b37edf338c898e2a7' # <== add auth to request
req['marvel_comics_api'] = '4dd250f38f98149b37edf338c898e2a7'  # <== add key/value to header
# all api keys are really key/value pairs with a key ("marvel_api_key") and a value ("asjkdgfylkau6p892364hjsgkjdg12235")


res = Net::HTTP.start(url.host, url.port) {|http|
http.request(req)
# }
puts res.body