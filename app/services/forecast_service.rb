class ForecastService < BaseService

  def self.get_city_weather(city)
  end_point = '/geocoding/v1/address'
    response_1 = mapquest_connection.get(end_point) do |faraday|
      faraday.params['key'] = ENV['mapquest_api_key']
      faraday.params['location'] = city

    end
     coordinates = JSON.parse(response_1.body, symbolize_names: true)

     latitute = coordinates[:results][0][:locations][0][:latLng][:lat]
     longitude = coordinates[:results][0][:locations][0][:latLng][:lng]

     get_destination_weather(latitute, longitude)
  end


  def self.get_destination_weather(lat, lon)
  end_point = '/data/2.5/onecall'
    response_2 = connection.get(end_point) do |faraday|
      faraday.params['appid'] = ENV['open_weather_api_key']
      faraday.params['lat'] = lat
      faraday.params['lon'] = lon
      faraday.params['units'] = 'imperial'
    end
    JSON.parse(response_2.body, symbolize_names: true)

  end
end
