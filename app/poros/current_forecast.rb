class CurrentForecast
  attr_reader :current_datetime,
              :current_sunrise,
              :current_sunset,
              :current_temp,
              :current_feels_like,
              :current_humidity,
              :current_uvi,
              :current_visibility,
              :current_conditions,
              :current_icon


  def initialize(data)
    @current_datetime = translate_unix_time(data[:current][:dt])
    @current_sunrise = translate_unix_time(data[:current][:sunrise])
    @current_sunset = translate_unix_time(data[:current][:sunset])
    @current_temp = data[:current][:temp]
    @current_feels_like = data[:current][:feels_like]
    @current_humidity = data[:current][:humidity]
    @current_uvi = data[:current][:uvi]
    @current_visibility = data[:current][:visibility]
    @current_conditions = data[:current][:weather][0][:description]
    @current_icon = data[:current][:weather][0][:icon]

end
    def translate_unix_time(integer)
      Time.at(integer)
    end

  end
