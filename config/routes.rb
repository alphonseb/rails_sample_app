Rails.application.routes.draw do
  resources :comments
  root "products#index"
end