Rails.application.routes.draw do
  devise_for :users
  resources :ranches
  resources :employees, only: [:new, :create]
  
  # Otras rutas
  root to: 'home#index'
end
