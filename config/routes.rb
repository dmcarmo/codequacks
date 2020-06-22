Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  devise_for :users
  root to: 'pages#home'
  # GET '/ducks', to: 'ducks#index'
  # GET '/ducks/new', to: 'ducks#new'
  # POST '/ducks', to: 'ducks#create'
  # POST '/ducks/:id/bookings', to: 'bookings#create'
  # GET '/ducks/:id', to: 'ducks#show'
  # GET '/dashboard', to: 'pages#dashboard'
  # GET '/bookings', to: 'bookings#index'
  # POST '/bookings/:id/reviews', to: 'reviews#create'
  # GET '/bookings/:id', to: 'bookings#show'
end



