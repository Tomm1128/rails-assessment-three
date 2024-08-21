Rails.application.routes.draw do
  resources :pizzerias, only: [:index, :show, :create, :new]
  resources :pizzas, only: [:show, :create, :new]
end
