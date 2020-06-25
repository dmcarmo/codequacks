Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  resources :bookings do
    resources :reviews
  end

  devise_for :users
  root to: 'pages#home'
  get '/ducks', to: 'ducks#index'
  get '/ducks/new', to: 'ducks#new'
  post '/ducks', to: 'ducks#create'
  post '/ducks/:id/bookings', to: 'bookings#create'
  get '/ducks/:id', to: 'ducks#show', as: :duck
  get '/dashboard', to: 'pages#dashboard'

end



