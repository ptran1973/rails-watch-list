Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  resources :list, only: [:index, :show, :create] do
    resources :bookmarks, only: [:create, :destroy]
  end
end

  #get 'lists', to: "lists#index"
  #get "lists/:id",      to: "lists#show", as: :lists do
   # get "lists/:id/bookmarks/new"
  #post "lists/:id/bookmarks"

#end
 # get    "lists/new",      to: "lists#new",  as: :new_movie
  #post "lists", to: "lists#create"
