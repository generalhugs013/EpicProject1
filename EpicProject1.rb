# require 'net/http'
# require 'json'

# endpoint = "https://query.yahooapis.com/v1/public/yql?q=select%20*%20from%20weather.forecast%20where%20woeid%20in%20(select%20woeid%20from%20geo.places(1)%20where%20text%3D%22nome%2C%20ak%22)&format=json&env=store%3A%2F%2Fdatatables.org%2Falltableswithkeys"
# uri = URI(endpoint)
# response = Net::HTTP.get(uri) 

# puts JSON.parse(response)


require 'net/http'
require 'json'

def call_api(endpoint)
    uri = URI(endpoint)
    response = Net::HTTP.get(uri)
    return response
end

def get_json(api_data)
    JSON.parse(api_data)
end

def get_humidity(json_data)
    require 'pry'; binding.pry
    json_data["query"]
    "TEST_HUMIDITY"
end

def get_pressure(json_data)
    "TEST_PRESSURE"
end

def get_visibility(json_data)
    "TEST_VISIBILITY"
end

def get_my_html(humidity, pressure, visibility)
    "<html>
        <body>
            <ul>
                <li>The humidity is #{humidity}.</li> 
                <li>The pressure is #{pressure}.</li>
                <li>The visibility is #{visibility}.</li>
            </ul>
        </body>
    </html>" 
#   "This is Rikki. Rikki would appreciate it if you would run code in a way that doesn't annoy me."
end

def write_to_file(filename, my_html)
    File.open(filename, 'w') { |file| file.write(my_html) }    
end

endpoint = "https://query.yahooapis.com/v1/public/yql?q=select%20*%20from%20weather.forecast%20where%20woeid%20in%20(select%20woeid%20from%20geo.places(1)%20where%20text%3D%22nome%2C%20ak%22)&format=json&env=store%3A%2F%2Fdatatables.org%2Falltableswithkeys"
api_data = call_api(endpoint) # Are these with "=" defining variables?Wait...no they aren't, becausethe "def" is what I'm pretty sure does it...
json_data = get_json(api_data) 
humidity = get_humidity(json_data)
pressure = get_pressure(json_data)
visibility = get_visibility(json_data)
my_html = get_my_html(humidity, pressure, visibility) 
filename = "my_page.html"
write_to_file(filename, my_html)
