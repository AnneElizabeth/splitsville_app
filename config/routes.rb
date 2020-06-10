Rails.application.routes.draw do
  resources :items
  resources :lists
  resources :users, except: [:new]

  #signing up
  get '/signup', to: 'users#new'

  #logging in
  get '/login', to: 'sessions#new'
  post '/login', to: 'sessions#create'
  delete '/login', to: 'sessions#destroys'

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
