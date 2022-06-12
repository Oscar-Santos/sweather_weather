class ForecastFacade
  def self.get_weather(city)
    ForecastService.get_city_weather(city)
  end
end
