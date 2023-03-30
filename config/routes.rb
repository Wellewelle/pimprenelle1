Rails.application.routes.draw do
  devise_for :users
  root to: "pages#home"

  resources :stories, only: [:index, :show, :new, :create, :search] do
    member do
      post :increment
      post :decrease
    end
  end

  resources :favorites, only: :index

  resources :audios, only: [:new, :create]
end
