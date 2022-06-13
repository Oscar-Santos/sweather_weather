class BooksService < BaseService
  def self.get_books(location, quantity)
  end_point = 'search.json'
    response = openlibrary_connection.get(end_point) do |faraday|
      faraday.params['place'] = location
      faraday.params['quantity'] = quantity
    end
    JSON.parse(response.body, symbolize_names: true)

  end
end
