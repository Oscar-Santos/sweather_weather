class Api::V1::BreweriesController < ApplicationController
  def index
    if params[:quantity].to_i > 0

      forecast = ForecastFacade.get_all_weather(params[:location])
      breweries = BreweriesFacade.get_all_for_city(params[:location], params[:quantity])
      render json: Api::V1::BreweriesSerializer.get_breweries(breweries, forecast)
    else
      render json:{message: 'quantity has to be greater than 0'}
    end
  end
end
