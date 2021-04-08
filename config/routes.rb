Rails.application.routes.draw do
  devise_for :users
  resources :keynotes
  resources :card_sets
  root to: 'pages#home'
  get '/setup', to: 'pages#setup'
  get '/cards', to: 'pages#cards'
end
