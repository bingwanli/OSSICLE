Rails.application.routes.draw do

  root to: 'pages#home'

  devise_for :users
  patch 'moodboards/:id', to: 'moodboards#addvote'
  resources :moodboards do
    resources :shoes, only: [:new, :index, :show, :edit, :update]
  end
  resources :shoes, only: [:create, :delete]
end
