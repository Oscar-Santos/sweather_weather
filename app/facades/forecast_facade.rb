  class ForecastFacade
    # def self.get_weather(city)
    #   all_weather = ForecastService.get_city_weather(city)
    #
    #   Forecast.new(json)
    # end
    def self.get_all_weather(city)
    all_weather = ForecastService.get_city_weather(city)

     current = CurrentForecast.new(all_weather)

     daily = all_weather[:daily][0..4].map do |daily_forecast|
       DailyForecast.new(daily_forecast)
     end

     hourly = all_weather[:hourly][0..7].map do |hourly_forecast|
       HourlyForecast.new(hourly_forecast)
     end

     [current, daily, hourly]
  end
  end
