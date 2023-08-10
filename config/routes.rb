Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  resources :lists, only: [:new, :create, :index, :show] do
    resources :bookmarks, only: [:new, :create]
  end
  resources :bookmarks, only: [:destroy]
  # Defines the root path route ("/")
  # root "articles#index"
end
