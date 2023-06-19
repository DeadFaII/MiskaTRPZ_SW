Rails.application.routes.draw do
  resources :musics
  resources :playlists

  get 'getMusic', to: 'main#getMusic', as: 'getMusic'
  get 'showPlaylist/:id', to: 'main#showPlaylist', as: 'show_playlist'

  root 'main#getMusic'
  post 'likeMusic', to: 'main#likeMusic', as: 'likeMusic'
  devise_for :users, controllers: { registrations: 'users/registrations' }
end