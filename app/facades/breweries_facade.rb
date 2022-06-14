class BreweriesFacade
  def self.get_all_for_city(city, quantity)
    json = BreweriesService.get_all_breweries(city, quantity)

    json[0..(quantity.to_i - 1)].map do |brewery|
      Brewery.new(brewery)
    end
  end
end
