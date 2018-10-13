Rails.application.routes.draw do
  get 'categories/index'
  get 'static_pages/home'
  get 'static_pages/favorites'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  #root 'application#hello'
  #root 'category#index'
  resources :categories
   root 'categories#index'

end
