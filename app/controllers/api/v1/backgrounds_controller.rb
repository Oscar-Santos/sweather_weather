class Api::V1::BackgroundsController < ApplicationController
  def show
     city_image = BackgroundsFacade.get_image(params[:location])
    #background = PhotoFacade.get_city_image(params[:location])

    render json: ImageSerializer.image_show(city_image)
  end
end
