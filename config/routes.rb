Rails.application.routes.draw do
  root :to => 'projects#index'
  post '/users' => 'users#create'

  get '/signin' => 'sessions#new'
  post '/signin' => 'sessions#create'
  get '/signout' => 'sessions#destroy'

  resources :projects do
    resources :tags
  end
end
