require 'rails_helper'

RSpec.describe 'breweries serializer' do
  it 'returns info' do


    get '/api/v1/breweries?location=denver&quantity=5'
    parse = JSON.parse(response.body, symbolize_names: true)

    expect(response.body).to have_key(:data)
    expect(response.body[:data]).to have_key(:id)
    expect(response.body[:data]).to have_key(:type)
    expect(response.body[:data]).to have_key(:id)
    expect(response.body[:data]).to have_key(:attributes)
    
#     {
#   "data": {
#     "id": "null",
#     "type": "breweries",
#     "attributes": {
#       "destination": "denver,co",
#       "forecast": {
#         "summary": "Cloudy with a chance of meatballs",
#         "temperature": "83 F"
#       },
#       "breweries": [
#         {
#           "id": 10129,
#           "name": "Denver Beer Co Olde Town Arvada",
#           "brewery_type": "micro"
#         },
#         {
#           "id": 12906,
#           "name": "New Image Brewing Co",
#           "brewery_type": "brewpub"
#         },
#         { ... same format for breweries 3, 4 and 5 ... }
#       ]
#     }
#   }
# }
  end
end
