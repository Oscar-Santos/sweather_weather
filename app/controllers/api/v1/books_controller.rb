class Api::V1::BooksController < ApplicationController
  def index
    books = BooksFacade.get_books_from_location(params[:location], params[:quantity])
  end
end
