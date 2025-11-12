Rails.application.routes.draw do
  get "artists", to: "artists#index"
  
  get "artists/:id", to: "artists#show"
  post "artists", to: "artists#create"
  put "artists/:id", to: "artists#update"
  delete "artists/:id", to: "artists#destroy"
  get "albums", to: "albums#index"
  get "albums/:id", to: "albums#show"
  post "albums", to: "albums#create"
  put "albums/:id", to: "albums#update"
  delete "albums/:id", to: "albums#destroy"
  get "tracks", to: "tracks#index"
  get "tracks/:id", to: "tracks#show"
  post "tracks", to: "tracks#create"
  put "tracks/:id", to: "tracks#update"
  delete "tracks/:id", to: "tracks#destroy"
end
