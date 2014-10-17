Rails.application.routes.draw do
  
  namespace :v1 do
    resources :playlists, except: [:new, :edit]
    resources :songs, except: [:new, :edit]
  end
  
  devise_for :users
end
