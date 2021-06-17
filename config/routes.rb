Rails.application.routes.draw do
  ActiveAdmin.routes(self)
  get 'users/index'
  get 'users/show'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  # resources :bookings do
    # resources :reviews
  # end

  devise_for :users
  root to: 'pages#home'
  get "dashboard", to: 'pages#dashboard', as: :dashboard

  resources :ducks do
    resources :bookings, only: [:new, :create]
    resources :reviews, only: :create
  end

  resources :bookings, only: [:index, :show, :destroy]
  
  resources :bookings, only: [:create] do
    resources :payments, only: :new
  end

  mount StripeEvent::Engine, at: '/stripe-webhooks'
end
