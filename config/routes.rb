Rails.application.routes.draw do
  devise_for :users
  root to: "pages#home"

  resources :stories, only: [:index, :show, :new, :create, :search]

  resources :favorites, only: [:new, :create, :destroy]

  resources :audios, only: [:new, :create]

end
