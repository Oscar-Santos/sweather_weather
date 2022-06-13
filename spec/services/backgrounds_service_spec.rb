require 'rails_helper'

RSpec.describe BackgroundsService do
  it 'returns an image of a location' do
    response = BackgroundsService.get_image_weather("denver,co")
  end
end
