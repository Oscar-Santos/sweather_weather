Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  namespace :api do
    namespace :v1 do
      resources :forecast, only: [:index]

      get '/backgrounds', to: 'backgrounds#show'

      get 'book-search', to: 'books#index'

      get 'breweries', to: 'breweries#index'


      post '/users', to: 'users#create'

      post 'road_trip', to: 'road_trip#create'

      post '/sessions', to: 'sessions#create'

    end
  end
end
