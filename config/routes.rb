Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  root "users#index"
  resources :users
  resources :states
  resources :cities
  get "user?Id=", :to => "user#new"
  # Defines the root path route ("/")
  # root "articles#index"
end
