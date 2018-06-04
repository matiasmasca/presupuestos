Rails.application.routes.draw do
  resources :budet_details
  resources :budgets
  resources :products
  resources :customers
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
