class ForecastService < BaseService

  def self.get_city_weather(city)
  end_point = '/geo/1.0/direct'
    response_1 = connection.get(end_point) do |faraday|
      faraday.params['appid'] = ENV['open_weather_api_key']
      faraday.params['q'] = city

    end
     coordinates = JSON.parse(response_1.body, symbolize_names: true)
     latitute = coordinates[0][:lat]
     longitude = coordinates[0][:lon]

     get_destination_weather(latitute, longitude)
  end

  def self.get_destination_weather(lat, lon)
  end_point = '/data/2.5/onecall'
    response_2 = connection.get(end_point) do |faraday|
      faraday.params['appid'] = ENV['open_weather_api_key']
      faraday.params['lat'] = lat
      faraday.params['lon'] = lon
    end
    d = JSON.parse(response_2.body, symbolize_names: true)
    require "pry"; binding.pry
  end
end
