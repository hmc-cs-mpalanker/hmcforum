Rails.application.routes.draw do

  root 'groups#index'
  resources :posts 
  devise_for :users

  get 'posts/new'

  get 'groups/new'

  get 'groups/index'

  get 'groups/show'

  get 'posts/index'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
