Rails.application.routes.draw do
  devise_for :users
  root to:  'categories#index'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  resources :activities do
    resources :bookings, only: %i[new create edit update]
  end
  resources :bookings, only: [:destroy]
end
