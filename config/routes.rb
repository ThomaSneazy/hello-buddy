Rails.application.routes.draw do
  devise_for :users
  root to:  'categories#index'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routin, .html
  resources :categories do
    resources :activities do
      resources :bookings, only: %i[show new create edit update]
    end
  end
  resources :bookings, only: [:destroy]
end
