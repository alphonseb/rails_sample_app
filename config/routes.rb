Rails.application.routes.draw do
  resources :profile
  resources :users
  devise_for :users
  root "products#index"
  resources :products do
        resources :comments
  end
end