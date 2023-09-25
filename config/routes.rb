Rails.application.routes.draw do
  devise_for :users
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  namespace :v1 do
    resources :profiles
    resources :sessions, only: [:create, :destroy]
  end

  
  # Defines the root path route ("/")
  # root "articles#index"
end
