Rails.application.routes.draw do
  resources :custumers
  resources :sales
  resources :vendors
  resources :products
  root to: 'sales#index'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end

