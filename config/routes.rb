Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"

  get "about", to: "about#index"
  # get "/", to: "main#index"
  root to: "main#index"

  get "sign_up", to:"registration#new"

  post "sign_up", to: "registration#create"

  delete "logout", to: "sessions#destroy"

  get "sign_in", to:"sessions#new"

  post "sign_in", to: "sessions#create"

  get "read_articles", to:"articles#index"

  resources :articles do
    resources :comments
  end
end
