Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  root to: "lists#index"
  resources :lists, only: [:index, :new, :create, :show] do
    resources :bookmarks, only: [:new, :create]
    resources :reviews, only: :create
  end
    # Defines the root path route ("/")
    # root "articles#index"
    resources :bookmarks, only: :destroy
    resources :reviews, only: :destroy
end
