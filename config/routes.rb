Rails.application.routes.draw do
  resources :pizzerias, only: [:index, :show, :new, :create] do
    resources :pizzas, only: [:new, :create, :show]
  end
end
