class Api::V1::BackgroundsController < ApplicationController
  def show
    city_image = BackgroundsFacade.get_image(params[:location])
    render json: Api::V1::ImageSerializer.image_show(city_image)
  end
end
