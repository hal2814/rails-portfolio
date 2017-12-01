Rails.application.routes.draw do
  root :to => 'projects#index'
  post '/users' => 'users#create'

  get '/signin' => 'sessions#new'
  post '/signin' => 'sessions#create'
  get '/signout' => 'sessions#destroy'
  resources :tags
  resources :projects
end
