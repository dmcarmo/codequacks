Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  devise_for :users
  root to: 'pages#home'
  get '/ducks', to: 'ducks#index'
  get '/ducks/new', to: 'ducks#new'
  post '/ducks', to: 'ducks#create'
  post '/ducks/:id/bookings', to: 'bookings#create'
  get '/ducks/:id', to: 'ducks#show', as: :duck
  get '/dashboard', to: 'pages#dashboard'
  get '/bookings', to: 'bookings#index'
  post '/bookings/:id/reviews', to: 'reviews#create'
  get '/bookings/:id', to: 'bookings#show'
end



