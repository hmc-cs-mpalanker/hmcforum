Rails.application.routes.draw do

  root 'groups#index'
  resources :posts 
  resources :groups
  devise_for :users

  get 'pages/about'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
