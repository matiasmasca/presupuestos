Rails.application.routes.draw do

  devise_for :users
  get 'pages/welcome'
  get 'pages/dashboard'
  get 'pages/home'

  get '/presupuestos', to: 'budgets#index', as: 'presupuestos'

  resources :budet_details
  resources :budgets
  resources :products
  resources :customers
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  root to: "pages#home"
end
