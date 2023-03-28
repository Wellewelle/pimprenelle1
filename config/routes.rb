Rails.application.routes.draw do
  devise_for :users
  root to: "pages#home"

  get '/profile', to: 'users#profile'

  resources :stories, only: [:index, :show, :new, :create, :search, :edit, :update, :destroy]

  resources :favorites, only: [:new, :create, :destroy]

  resources :audios, only: [:new, :create]
end
