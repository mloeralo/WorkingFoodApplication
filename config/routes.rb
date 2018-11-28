Rails.application.routes.draw do
get 'sessions/new'
  get 'favorites/index'

 get  'users',  to: 'users#new'
 get  'users',  to: 'users#show'
 post 'users',  to: 'users#create'
 get  'sessions',   to: 'sessions#new'
 post 'sessions',   to: 'sessions#create'
 delete 'sessions',  to: 'sessions#destroy'

  get 'recipes/index'
  get 'ingredients/index'
  get 'units/index'
  get 'categories/index'
  get 'static_pages/home'
  get 'static_pages/favorites'
  get 'units', to: 'units#index', as: 'units'
  get 'ingredients', to: 'ingredients#index', as: 'ingredients'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  #root 'application#hello'
  resources :categories
  resources :users
  root 'static_pages#home'
  #root 'static_pages#home'

  #root 'recipes#index'

  #resources :recipes, only: %w(show index)


end
