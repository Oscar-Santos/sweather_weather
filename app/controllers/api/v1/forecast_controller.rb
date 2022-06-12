class Api::V1::ForecastController < ApplicationController
  def index
    ForecastFacade.get_weather(params[:location])
  end
end
