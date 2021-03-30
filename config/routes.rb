Rails.application.routes.draw do
  root 'application#welcome'
  resources :contributions
  resources :stories
  resources :users
  get '/logout' => :destroy, to: 'sessions#logout', as: 'logout'
  get '/login', to: 'sessions#new_login', as: 'new_login'
  post 'login', to: 'sessions#login'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
