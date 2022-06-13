class Api::V1::BooksSerializer

  def self.get_location_books(forecast, books)
    {
      data: {
        id: nil,
        type: "books",
        attributes: {
          destination: books.first.city,
          forecast: {
            summary: forecast.first.current_conditions,
            temperature: forecast.first.current_temp
          },
          total_books_found: books.count,
          books: books.map do |book|
            {
              isbn: book.isbn,
              title: book.title,
              publisher: book.publisher
            }
          end
        }
      }
    }
  end
end
