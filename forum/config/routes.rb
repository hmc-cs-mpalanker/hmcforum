Rails.application.routes.draw do

  get 'profiles/new'

  get 'profiles/edit'

  get 'profiles/show'

  root 'groups#index'

  resources :groups do 
    resources :posts
  end
  
  resources :profiles
  devise_for :users, controllers: { registrations: "registrations" }

  get 'pages/about'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
