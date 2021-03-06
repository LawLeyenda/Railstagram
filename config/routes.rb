Rails.application.routes.draw do
  get 'search/index'
  devise_for :users
  get 'home/index'
  root 'home#index'
  get 'search' => 'search#index'
  
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  #
  resources :users, only: [:show, :edit, :update]
  resources :posts, only: [:new, :create, :show, :destroy]
end
