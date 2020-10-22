Rails.application.routes.draw do
  resources :user_sneakers, only: [:index, :destory, :create]
  resources :sneakers
  resources :users, only: [:index, :show, :create]
  post 'login', to: 'authentication#login'
  # post 'remove', to: 'user_sneakers#remove'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
