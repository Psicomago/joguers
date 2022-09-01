Rails.application.routes.draw do
  get 'pages/home'
  resources :countries
  resources :regions
  resources :provinces
  resources :communnes
  resources :addresses
  resources :user_evaluations
  resources :post_evaluations
  resources :tasks
  resources :roles
  resources :sports
  resources :sport_centers
  resources :post_preferences
  resources :user_preferences
  resources :comments
  resources :posts
  resources :users
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  root "pages#home"
end
