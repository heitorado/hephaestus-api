Rails.application.routes.draw do
  resources :users, only: [:create]
  post 'user_token' => 'user_token#create'
  post '/graphql', to: 'graphql#execute'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
