Rails.application.routes.draw do
  resources :tours
  resources :clients
  resources :reservations
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
