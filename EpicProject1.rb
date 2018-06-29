# require 'net/http'
# require 'json'

# endpoint = "https://query.yahooapis.com/v1/public/yql?q=select%20*%20from%20weather.forecast%20where%20woeid%20in%20(select%20woeid%20from%20geo.places(1)%20where%20text%3D%22nome%2C%20ak%22)&format=json&env=store%3A%2F%2Fdatatables.org%2Falltableswithkeys"
# uri = URI(endpoint)
# response = Net::HTTP.get(uri) 

# puts JSON.parse(response)





require 'net/http'
require 'json'
require "pry"
def call_api(endpoint)
    uri = URI(endpoint)
    response = Net::HTTP.get(uri)
    return response
end

def get_json(api_data)
    # JSON.parse(response)[...].to_s
end

def get_info_1(data_i_want)
    # data_i_want[...][...]
end

def get_info_2(data_i_want)
    # data_i_want[...][...]
end

def get_info_3(data_i_want)
    # data_i_want[...][...]
end

def my_html(info_1, info_2, info_3)
   "<html><body>Here is #{info_1}. Here is #{info_2}. Here is #{info_3}.</body></html>" 
end

def write_to_file(filename, my_html)
    File.open(filename, 'w') { |file| file.write(my_html) }    
end

endpoint = "https://query.yahooapis.com/v1/public/yql?q=select%20*%20from%20weather.forecast%20where%20woeid%20in%20(select%20woeid%20from%20geo.places(1)%20where%20text%3D%22nome%2C%20ak%22)&format=json&env=store%3A%2F%2Fdatatables.org%2Falltableswithkeys"
api_data = call_api(endpoint)
json_data = get_json(api_data)
info_1 = get_info_1(json_data)
info_2 = get_info_2(json_data)
info_3 = get_info_3(json_data)
my_html = get_my_html(info_1, info_2, info_3) 
binding.pry
filename = "my_page.html"
write_to_file(filename, my_html)