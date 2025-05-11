require "http/client"
require "json"

city = "Tashkent"
api_key = "YOUR_API_KEY"
url = "http://api.openweathermap.org/data/2.5/weather?q=#{city}&appid=#{api_key}&units=metric"

response = HTTP::Client.get(url)
data = JSON.parse(response.body)

temp = data["main"]["temp"].to_f
humidity = data["main"]["humidity"].to_i
pressure = data["main"]["pressure"].to_i

puts "Harorat: #{temp}°C"
puts "Namlik: #{humidity}%"
puts "Bosim: #{pressure} hPa"
