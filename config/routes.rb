Rails.application.routes.draw do
  devise_for :users
  root to: "pages#home"
  get "up" => "rails/health#show", as: :rails_health_check
  resources :cars
  get "service-worker" => "rails/pwa#service_worker", as: :pwa_service_worker
  get "manifest" => "rails/pwa#manifest", as: :pwa_manifest
  resources :garages
  get "my_garage", to: "garages#my_garage"
  # Defines the root path route ("/")
  # root "posts#index"


  resources :cars do
    resources :bookings, only: [:new, :create]
  end
  resources :bookings, only: [:show, :edit, :update, :destroy]

  get "my_bookings", to: "bookings#my_bookings"

  resources :garages do
    resources :cars, only: [:new, :create, :edit, :update, :destroy]
  end

  resources :cars, only: [:index, :show]

  resources :bookings, only: [:create, :edit, :update, :destroy]
end
