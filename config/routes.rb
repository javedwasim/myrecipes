Rails.application.routes.draw do
    root 'pages#home'
    get '/home', to: 'pages#home'

    # get '/recipes', to: 'recipes#index'
    # get '/recipes/new', to: 'recipes#new', as: 'new_recipe'
    # post '/recipes', to: 'recipes#create'
    # get '/recipes/:id/edit', to: 'recipes#edit', as: 'edit_recipe'
    # patch 'recipes/:id', to: 'recipes#update'
    # delete 'recipes/:id', to: 'recipes#destroy'

    resources :recipes

end
