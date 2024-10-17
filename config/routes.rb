Rails.application.routes.draw do
  root "photos#index"

  devise_for :users
  resources :likes
  resources :follow_requests
  resources :comments
  resources :photos
  get ":username/liked" => "users#liked", as: :liked
  get "/:username" => "users#show", as: :user
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
