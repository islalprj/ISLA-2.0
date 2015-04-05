Rails.application.routes.draw do
  devise_for :users

   root 'home#index'

get '/control', to: 'home#control'
get '/monitor', to: 'home#monitor'
get '/cams', to: 'home#cams'
get '/traffic', to: 'home#traffic'

patch '/items/:id/toggle', to: 'items#toggle'
end
