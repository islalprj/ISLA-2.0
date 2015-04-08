

  Rails.application.routes.draw do
    devise_for :users, controllers: { :omniauth_callbacks => "users/omniauth_callbacks" }

    authenticated :user do
     root to: "home#index", as: :authenticated_root
    end

    get '/control', to: 'home#control'
    get '/monitor', to: 'home#monitor'
    get '/cams', to: 'home#cams'
    get '/traffic', to: 'home#traffic'
    get '/mail', to: 'sessions#create_gmail'
    get '/emails', to: 'home#emails'

  resources :users, only: [:index, :new]
  patch '/items/:id/toggle', to: 'items#toggle'

    unauthenticated do
      devise_scope :user do
        root to: "devise/registrations#new", as: :unauthenticated_root
      end
    end
  end
