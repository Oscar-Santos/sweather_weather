class Brewery
  attr_reader :id,
              :name,
              :city,
              :brewery_type

  def initialize(data)
    @id = data[:id]
    @name = data[:name]
    @city = data[:city]
    @brewery_type = data[:brewery_type]

  end
end
