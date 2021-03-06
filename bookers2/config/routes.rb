Rails.application.routes.draw do
  
  get 'books/show'
  get 'books/index'
  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root to: 'homes#top'

  resources :books
  resources :users, only: [:index, :show, :edit, :update]
end
