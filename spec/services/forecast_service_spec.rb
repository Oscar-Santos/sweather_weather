require 'rails_helper'

RSpec.describe ForecastService do
  it 'returns a city', :vcr do
    response_1 = ForecastService.get_city_weather('denver')
  end

  it 'returns a city weather', :vcr do
    response_2 = ForecastService.get_destination_weather('39.7392364', '104.9848623')
  end

end
