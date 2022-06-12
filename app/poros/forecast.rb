class Forecast
  attr_reader :current_datetime,
              :current_sunrise,
              :current_sunset,
              :current_temp,
              :current_feels_like,
              :current_humidity,
              :current_uvi,
              :current_visibility,
              :current_conditions,
              :current_icon,
              :daily_date,
              :daily_sunrise,
              :daily_sunset,
              :daily_max_temp,
              :daily_min_temp,
              :daily_conditions,
              :daily_icon,
              :hourly_time,
              :hourly_temp,
              :hourly_conditions,
              :hourly_icon

  def initialize(data)
    @current_datetime = data[:current][:dt]
    @current_sunrise = data[:current][:sunrise]
    @current_sunset = data[:current][:sunset]
    @current_temp = data[:current][:temp]
    @current_feels_like = data[:current][:feels_like]
    @current_humidity = data[:current][:humidity]
    @current_uvi = data[:current][:uvi]
    @current_visibility = data[:current][:visibility]
    @current_conditions = data[:current][:weather][0][:description]
    @current_icon = data[:current][:weather][0][:icon]

    @daily_date = data[:daily].first[:dt]
    @daily_sunrise = data[:daily].first[:sunrise]
    @daily_sunset = data[:daily].first[:sunset]
    @daily_max_temp = data[:daily].first[:temp][:max]
    @daily_min_temp = data[:daily].first[:temp][:min]
    @daily_conditions = data[:daily].first[:weather][0][:description]
    @daily_icon = data[:daily].first[:weather][0][:icon]

    @hourly_time = data[:hourly].first[:dt]
    @hourly_temp = data[:hourly].first[:temp]
    @hourly_conditions = data[:hourly].first[:weather][0][:description]
    @hourly_icon = data[:hourly].first[:weather][0][:icon]
  end
end
