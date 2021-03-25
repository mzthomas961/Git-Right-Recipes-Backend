Rails.application.routes.draw do
  resources :recipe_diets
  resources :preferences
  resources :recipes
  resources :diets
  resources :users
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
