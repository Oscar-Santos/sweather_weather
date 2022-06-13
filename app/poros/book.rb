class Book
  attr_reader  :title,
              :isbn,
              :publisher
  def initialize(data)

    @title = data[:title]
    @isbn = data[:_version_]
    @publisher = data[:publisher]
  end
end
