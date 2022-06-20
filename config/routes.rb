Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'

  # get 'profiles/:id', to: 'profiles#show', as: :profiles
  # post 'users/:id/:reviews', to: 'users#reviews', as: :reviews
  resources :profiles, only: :show do
    resources :reviews, only: %i[new create destroy]
  end
  get 'dashboards/:id', to: 'dashboards#show', as: :dashboard
  patch 'bookings/:id/refuse', to: 'bookings#refused', as: :refused
  patch 'bookings/:id/confirm', to: 'bookings#validation', as: :validation

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
  resources :activities, only: %i[destroy]

end
