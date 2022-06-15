Rails.application.routes.draw do
  devise_for :users
  root to:  'categories#index'
  get 'profiles/:id', to: 'profiles#show', as: :profiles

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
