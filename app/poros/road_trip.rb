class RoadTrip
  attr_reader :travel_time,
              :start_city,
              :end_city,
              :destination_conditions,
              :destination_temp


  def initialize(data, destination_temp, destination_conditions)
    @start_city = data[:route][:locations][0][:adminArea5]
    @end_city = data[:route][:locations][1][:adminArea5]
    @travel_time = data[:route][:formattedTime]
    @destination_temp = destination_temp
    @destination_conditions = destination_conditions
  end

end
