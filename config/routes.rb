Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  resources :artists, only: [:index, :show, :new, :edit]
  post '/artists/', to: 'artists#create'
  patch '/artists/:id', to: 'artists#update'

  resources :songs, only: [:index, :show, :new, :create, :edit]
  patch '/songs/:id', to: 'songs#update'

  resources :genres, only: [:index, :show, :new, :create, :edit]
  patch '/genres/:id', to: 'genres#update'
end
