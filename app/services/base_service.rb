class BaseService
  def self.connection
    url = 'http://api.openweathermap.org'
    Faraday.new(url: url)
  end

  def self.mapquest_connection
    url = 'http://www.mapquestapi.com'
    Faraday.new(url: url)
  end

  def self.openlibrary_connection
    url = 'http://openlibrary.org'
    Faraday.new(url: url)
  end

  # def self.breweries_connection
  #   url = 'https://api.openbrewerydb.org'
  #   Faraday.new(url: url)
  # end
end
