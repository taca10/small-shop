Rails.application.routes.draw do
 devise_for :users, controllers: { :omniauth_callbacks => "omniauth_callbacks" }
  root 'tops#index'

  resources :tops, only: [:show]

  # get '/auth/:provider/callback', :to => 'sessions#callback'
  # post '/auth/:provider/callback', :to => 'sessions#callback'
  # get '/logout' => 'sessions#destroy', as: :logout
end
