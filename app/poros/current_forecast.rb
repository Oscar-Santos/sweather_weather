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
        @current_datetime = translate_unix_time(data[:dt])
        @current_sunrise = translate_unix_time(data[:sunrise])
        @current_sunset = translate_unix_time(data[:sunset])
        @current_temp = data[:temp]
        @current_feels_like = data[:feels_like]
        @current_humidity = data[:humidity]
        @current_uvi = data[:uvi]
        @current_visibility = data[:visibility]
        @current_conditions = data[:weather][0][:description]
        @current_icon = data[:weather][0][:icon]

        
    end

    def translate_unix_time(integer)
      Time.at(integer)
    end

end
