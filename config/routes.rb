Rails.application.routes.draw do
  
  use_doorkeeper
  namespace :v1 do
    resources :playlists, except: [:new, :edit]
    resources :songs, except: [:new, :edit]
  end
  
  devise_for :users
end
