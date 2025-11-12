Rails.application.routes.draw do
  resources :artists
  resources :albums
  resources :tracks
  resources :users
  resources :playlists
end
