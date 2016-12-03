Rails.application.routes.draw do
  # get 'histories/index'
  #
  # get 'histories/import'

    root to: 'cookies#index'

    # post 'cookies/import'

    resources :cookies do
        collection { post "import" }
    end
    resources :histories do
        collection { post "import" }
    end

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
