class Api::V1::BooksController < ApplicationController
  def index
    books = BooksFacade.get_books_from_location(params[:location], params[:quantity])
    forecast = ForecastFacade.get_all_weather(params[:location])
    render json: Api::V1::BooksSerializer.get_location_books(forecast, books)
  end
end
