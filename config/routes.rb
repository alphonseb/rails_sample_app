Rails.application.routes.draw do
  resources :categories
    devise_for :users
    resources :users
  root "products#index"
  resources :products do
        resources :comments
  end
end