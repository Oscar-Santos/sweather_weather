class BackgroundsFacade
  def self.get_image(search)
    json = BackgroundsService.get_image_weather(search)


    Image.new(json)
  end
end
