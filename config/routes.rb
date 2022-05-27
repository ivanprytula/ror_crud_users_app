Rails.application.routes.draw do
  resources :users
  # Defines the root path route ("localhost:3000/")
  root 'home#index'

  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  get 'home/about'
end
