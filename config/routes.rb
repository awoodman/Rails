Rails.application.routes.draw do
  resources :todo_items
  root 'todo_lists#index'
  resources :todo_lists

  resources :accounts

  # get 'sessions/new'
  # get 'sessions/create'
  # get 'sessions/destroy'
  resources :sessions, only: [:new, :create, :destroy]
  get '/login' => "sessions#new", as: "login"
  #delete '/logout' => "sessions#destroy", as: "logout"
  get '/logout' => "sessions#destroy", as: "logout"
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
