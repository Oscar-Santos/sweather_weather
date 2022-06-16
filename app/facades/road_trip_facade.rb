class RoadTripFacade
  def self.get_roadtrip_details(origin, destination)
    trip_details = ForecastService.find_roadtrip_details(origin, destination)

      if trip_details[:route][:formattedTime].present?
        eta = round_time(trip_details[:route][:formattedTime])

        destination_temp = get_destination_temperature(destination, eta.to_i)
        destination_conditions = get_destination_conditions(destination, eta.to_i)
        RoadTrip.new(trip_details, destination_temp, destination_conditions)
      elsif trip_details[:route][:formattedTime].nil?
        return "impossible trip"
      end
    end

  def self.round_time(eta)
    if eta.present?
      hours, minutes, seconds = eta.split(":")
      minutes.to_i > 30 ? hours.to_i.ceil : hours.to_i.round
    elsif eta.nil?
      return "impossible trip"
    end
  end

  def self.get_destination_temperature(destination, eta)
    if eta == "impossible trip"
      return "impossible trip"
    elsif
      weather = ForecastService.get_city_weather(destination)
      weather[:hourly][eta.to_i][:temp]
    end
  end

  def self.get_destination_conditions(destination, eta)
    if eta == "impossible trip"
      return "impossible trip"
    else
      weather = ForecastService.get_city_weather(destination)
      if weather[:hourly][eta.to_i][:weather][0][:description].present?
        weather[:hourly][eta.to_i][:weather][0][:description]
      end
    end
  end
end
