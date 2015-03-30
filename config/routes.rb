Rails.application.routes.draw do
  devise_for :users
  
   root 'home#index'

patch '/items/:id/toggle', to: 'items#toggle'


end
