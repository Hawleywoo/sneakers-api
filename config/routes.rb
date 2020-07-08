Rails.application.routes.draw do
  resources :user_sneakers
  resources :sneakers
  resources :users, only: [:show, :create]
  post 'login', to: 'authentication#login'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
