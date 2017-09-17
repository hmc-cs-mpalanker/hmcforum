Rails.application.routes.draw do
  get 'pages/about'

  get 'posts/new'

  get 'groups/new'

  get 'groups/index'

  get 'groups/show'

  get 'posts/index'

  root 'groups#index'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
