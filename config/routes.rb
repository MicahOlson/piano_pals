Rails.application.routes.draw do
  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root to: 'pages#home'

  get '/setup', to: 'pages#setup'
  # match '/cards' => 'pages#cards', via: :post
  # match '/cards' => 'pages#cards', via: :get
  get '/cards', to: 'pages#cards'
  resources :keynotes

end
