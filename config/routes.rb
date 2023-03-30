Rails.application.routes.draw do
  devise_for :users
  root to: "pages#home"

  get '/mes_histoires', to: 'users#user_stories'

  get '/filtres', to: 'stories#search'

  resources :stories, only: [:index, :show, :new, :create, :search, :edit, :update, :destroy]

  resources :favorites
  get '/profile', to: 'users#profile'

  resources :audios, only: [:new, :create]
end
