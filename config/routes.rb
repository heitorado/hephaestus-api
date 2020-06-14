Rails.application.routes.draw do
  resources :users
  post "/graphql", to: "graphql#execute"
  resources :recipes
  resources :materials
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
