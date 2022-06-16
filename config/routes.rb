Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'

  get 'profiles/:id', to: 'profiles#show', as: :profiles
  get 'dashboards/:id', to: 'dashboards#index', as: :dashboard
  patch 'bookings/:id', to: 'bookings#validation', as: :validation
  patch 'bookings/:id', to: 'bookings#refused', as: :refused

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routin, .html
  resources :categories do
    resources :activities do
      resources :bookings, only: %i[new edit update]
    end
  end
  resources :activities do
    resources :bookings, only: %i[create]
  end
  resources :bookings, only: %i[show destroy]

end
