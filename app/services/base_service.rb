class BaseService
  def self.connection
    url = 'http://api.openweathermap.org'
    Faraday.new(url: url)
  end
 end
