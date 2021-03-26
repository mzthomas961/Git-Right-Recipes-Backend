Rails.application.routes.draw do
  # resources :recipe_diets
  get "/recipe_diets", to: "recipe_diets#index"
  get "/recipe_diets/new", to: "recipe_diets#new"
  post "/recipe_diets", to: "recipe_diets#create"
  get "/recipe_diets/:id", to: "recipe_diets#show"
  get "/recipe_diets/:id/edit", to: "recipe_diets#edit"
  patch "/recipe_diets/:id", to: "recipe_diets#update"
  delete "/recipe_diets/:id", to: "recipe_diets#destroy"

  # resources :preferences
  get "/preferences", to: "preferences#index"
  get "/preferences/new", to: "preferences#new"
  post "/preferences", to: "preferences#create"
  get "/preferences/:id", to: "preferences#show"
  get "/preferences/:id/edit", to: "preferences#edit"
  patch "/preferences/:id", to: "preferences#update"
  delete "/preferences/:id", to: "preferences#destroy"


  # resources :recipes
  get "/recipes", to: "recipes#index"
  get "/recipes/new", to: "recipes#new"
  post "/recipes", to: "recipes#create"
  get "/recipes/:id", to: "recipes#show"
  get "/recipes/:id/edit", to: "recipes#edit"
  patch "/recipes/:id", to: "recipes#update"
  delete "/recipes/:id", to: "recipes#destroy"
  
  # resources :diets
  get "/diets", to: "diets#index"
  get "/diets/new", to: "diets#new"
  post "/diets", to: "diets#create"
  get "/diets/:id", to: "diets#show"
  get "/diets/:id/edit", to: "diets#edit"
  patch "/diets/:id", to: "diets#update"
  delete "/diets/:id", to: "diets#destroy"
 
  # resources :users
  get "/users", to: "users#index"
  get "/users/new", to: "users#new"
  post "/users", to: "users#create"
  get "/users/:id", to: "users#show"
  get "/users/:id/edit", to: "users#edit"
  patch "/users/:id", to: "users#update"
  delete "/users/:id", to: "users#destroy"

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
