Rails.application.routes.draw do
  resources :animals
  resources :corrals
  devise_for :users, controllers: {
    sessions: 'users/sessions',
    registrations: 'users/registrations'
  }
  resources :employees, only: [:new, :create]
  resources :ranches, only: [:new, :create, :show, :edit, :update, :index, :destroy]

  resources :ranches do
    resources :corrals
  end  
  # Otras rutas
  root to: 'home#index'
end
