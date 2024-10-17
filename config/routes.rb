Rails.application.routes.draw do
  devise_for :users
  root to: "pages#home"
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Reveal health status on /up that returns 200 if the app boots with no exceptions, otherwise 500.
  # Can be used by load balancers and uptime monitors to verify that the app is live.
  get "up" => "rails/health#show", as: :rails_health_check

  # Render dynamic PWA files from app/views/pwa/*
  get "service-worker" => "rails/pwa#service_worker", as: :pwa_service_worker
  get "manifest" => "rails/pwa#manifest", as: :pwa_manifest

  # Defines the root path route ("/")
  # root "posts#index"
  resources :trips, only: [:index, :show, :new, :create] do
    resources :locations, only: [:new, :create] do
      # resources :friendships, only: :create
    end
  end
  resources :locations, only: [:show]
  resources :friendships, only: [:create, :show, :index, :update] do
    resources :messages, only: :create
  end
  resources :users, only: :show

  get "profile", to: "users#profile"
  get 'homefeed', to: 'pages#homefeed'
end
