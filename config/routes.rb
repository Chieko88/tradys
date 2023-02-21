Rails.application.routes.draw do
  devise_for :users
  root to: "experiences#index"
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"

  resources :experiences, only: [:index, :show, :new, :create] do
    resources :bookings, only: [:new, :create]
  end
  resources :bookings, only: [:index]

  namespace :host do
    resources :bookings, only: [:index, :edit, :update]
  end
end
