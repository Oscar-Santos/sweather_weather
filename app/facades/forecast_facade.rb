class ForecastFacade
  def self.get_weather(city)
    json = ForecastService.get_city_weather(city)

    Forecast.new(json)
  end
end
