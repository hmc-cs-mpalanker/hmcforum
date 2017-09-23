Rails.application.routes.draw do

  get 'profiles/create'

  get 'profiles/edit'

  get 'profiles/view'

  root 'groups#index'

  resources :groups do 
    resources :posts
  end
  
  resources :profiles
  devise_for :users

  get 'pages/about'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
