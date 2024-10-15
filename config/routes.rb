Rails.application.routes.draw do
  resources :likes
  resources :follow_requests
  resources :comments
  resources :photos
  devise_for :users
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  root "photos#index"
  # root "articles#index"
end
