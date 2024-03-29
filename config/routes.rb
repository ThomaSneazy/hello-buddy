Rails.application.routes.draw do
  devise_for :users
  root to: 'categories#index'

  get 'pages', to: 'pages#home', as: :login
  get 'profiles/:id', to: 'profiles#show', as: :profiles
  get 'dashboards/:id', to: 'dashboards#show', as: :dashboard
  patch 'bookings/:id/refuse', to: 'bookings#refused', as: :refused
  patch 'bookings/:id/confirm', to: 'bookings#validation', as: :validation
  patch 'bookings/:id/pending', to: 'bookings#pending', as: :pending

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routin, .html
  resources :categories do
    resources :activities do
      resources :bookings, only: %i[new edit update]
    end
  end
  resources :activities do
    resources :bookings, only: %i[create]
    resources :chatrooms, only: %i[create show] do
      resources :messages, only: :create
    end
  end
  resources :users do
    resources :reviews, only: %i[new create destroy]
  end
  resources :bookings, only: %i[show destroy update]
  resources :activities, only: %i[destroy]

  mount ActionCable.server => "/cable"
end
