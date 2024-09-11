Rails.application.routes.draw do
  resources :animals
  devise_for :users, controllers: {
    sessions: 'users/sessions',
    registrations: 'users/registrations'
  }
  resources :employees, only: [:new, :create]
  resources :ranches, only: [:new, :create, :show, :edit, :update, :index, :destroy]
  # Otras rutas
  root to: 'home#index'
end
