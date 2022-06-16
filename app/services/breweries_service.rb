# class BreweriesService < BaseService
#   def self.get_all_breweries(city, quantity)
#   end_point = '/breweries'
#     response = breweries_connection.get(end_point) do |faraday|
#       faraday.params['by_city'] = city
#     end
#     JSON.parse(response.body, symbolize_names: true)
#   end
# end
