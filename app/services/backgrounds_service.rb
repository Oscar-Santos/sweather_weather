
class BackgroundsService
  def self.get_image_weather(query)
  end_point = '/search/photos'
    response = connection.get(end_point) do |faraday|
      faraday.params['client_id'] = ENV['unsplash_api_key']
      faraday.params['query'] = query
      faraday.params['orientation'] = 'landscape'

    end
    JSON.parse(response.body, symbolize_names: true)

  end

  def self.connection
    url = 'https://api.unsplash.com'
    Faraday.new(url: url)
  end

end
