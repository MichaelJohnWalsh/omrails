Rails.application.routes.draw do
  resources :items
  resources :submissions
  resources :tweets
  ActiveAdmin.routes(self)
  devise_for :users
  as :user do
  	get "signin" => 'devise/sessions#new'
  	get "signup" => 'devise/registrations#new'
    get "users/sign_out" => 'devise/sessions#destroy'
  end
  root 'pages#home'
  get 'about' => 'pages#about'
  get 'contact' => 'pages#contact'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
