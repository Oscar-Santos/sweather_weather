# class BreweriesFacade
#   def self.get_all_for_city(city, quantity)
#     new = remove_state(city)
#     json = BreweriesService.get_all_breweries(new, quantity)
#
#     json[0..(quantity.to_i - 1)].map do |brewery|
#       Brewery.new(brewery)
#     end
#   end
#
#   def self.remove_state(city)
#     city.split.first.chop
#   end
# end
