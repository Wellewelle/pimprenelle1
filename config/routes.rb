Rails.application.routes.draw do
  devise_for :users
  root to: "pages#home"

  get '/profile', to: 'users#profile'
  get '/mes_histoires', to: 'users#user_stories'

  resources :stories, only: [:index, :show, :new, :create, :search, :edit, :update, :destroy]

  resources :favorites, only: :index

  resources :audios, only: [:new, :create]
end
