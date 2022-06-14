class Api::V1::BreweriesController < ApplicationController
  def index
    forecast = ForecastFacade.get_all_weather(params[:location])
    breweries = BreweriesFacade.get_all_for_city(params[:location], params[:quantity])
    render json: Api::V1::BreweriesSerializer.get_breweries(breweries, forecast)

  end
end
