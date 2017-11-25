Rails.application.routes.draw do
  get 'feed', to: 'feed#show'


  resources :users, only: :show, param: :username do
    member do
      post 'follow', to: 'follows#create'
      delete 'unfollow', to: 'follows#destroy'
    end
  end
  resources :items
  resources :submissions
  resources :tweets
  ActiveAdmin.routes(self)
  devise_for :users
  as :user do
  	get "signin", to: 'devise/sessions#new'
  	get "signup", to: 'devise/registrations#new'
    get "users/sign_out", to: 'devise/sessions#destroy'
  end
  root 'pages#home'
  get 'about', to: 'pages#about'
  get 'contact', to: 'pages#contact'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
