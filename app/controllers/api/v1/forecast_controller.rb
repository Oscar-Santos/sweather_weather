class Api::V1::ForecastController < ApplicationController
  def index
    #forecast = ForecastFacade.get_weather(params[:location])

    # render json: ForecastSerializer.new(forecast)
    # #render json: forecast

    city = params[:location]

    all_weather = ForecastFacade.get_all_weather(city)

    render json: Api::V1::ForecastSerializer.forecast_index(all_weather[0], all_weather[1], all_weather[2])

    # PhotoFacade.get_city_image(city)
  end

end
