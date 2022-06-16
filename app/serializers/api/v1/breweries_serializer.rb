# class Api::V1::BreweriesSerializer
#   def self.get_breweries(breweries, forecast)
#     {
#       data: {
#         id: nil,
#         type: 'breweries',
#         attributes: {
#           destination: breweries.first.city,
#           forecast: {
#             summary: forecast.first.current_conditions,
#             temperature: forecast.first.current_temp
#           },
#         breweries: breweries.map do |brewery|
#           {
#             id: brewery.id,
#             name: brewery.name,
#             brewery_type: brewery.brewery_type
#           }
#         end
#         }
#       }
#     }
#   end
# end
