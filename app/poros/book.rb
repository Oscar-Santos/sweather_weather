class Book
  def initialize(data)
    @city = data[:place].first
    @title = data[:title]
    @isbn = data[:_version_]
    @publisher = data[:publisher]
  end
end
