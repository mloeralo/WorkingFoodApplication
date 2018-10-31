Rails.application.routes.draw do
  get 'favorites/index'
  get 'users/new'
  get 'ingredients/index'
  get 'units/index'
  get 'categories/index'
  #get 'recipes/index'

  get 'static_pages/home'
  get 'static_pages/favorites'
  get 'units', to: 'units#index', as: 'units'
  get 'ingredients', to: 'ingredients#index', as: 'ingredients'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  #root 'application#hello'
  resources :categories
  resources :users
  root 'ingredients#index'
  #root 'static_pages#home'

  #root 'recipes#index'

  #resources :recipes, only: %w(show index)


end
