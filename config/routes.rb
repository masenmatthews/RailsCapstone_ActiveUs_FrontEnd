Rails.application.routes.draw do
  resources :organizations
  resources :users
  
  root :to => 'layouts#index'

  get '/signup' => 'users#new'
  post '/users' => 'users#create'

  get '/signin' => 'sessions#new'
  post '/signin' => 'sessions#create'
  get '/signout' => 'sessions#destroy'
end
