Rails.application.routes.draw do
  mount RailsAdmin::Engine => '/admin', as: 'rails_admin'
  devise_for :users
  if Rails.env.development?
    mount LetterOpenerWeb::Engine, at: "/letter_opener"
  end
  resources :users, only: [:show]
  get 'tasks/top'
  resources :tasks do
    resources :comments
    collection do
      get "search"
    end

  end
  root 'tasks#top'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  resources :likes, only: [:create, :destroy]
  resources :favorites, only: [:create, :destroy]
end
