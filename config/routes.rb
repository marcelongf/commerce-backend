Rails.application.routes.draw do
  # devise_for :users
  resources :sessions, only: [:create, :destroy]
  put 'password/update', to: 'passwords#update'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
