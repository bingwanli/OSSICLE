Rails.application.routes.draw do

  resources :moodboard_attachments
  root to: 'pages#home'


  devise_for :users
  patch 'moodboards/:id', to: 'moodboards#addvote'
  resources :moodboards do
    resources :shoes, only: [:new, :index, :show, :edit, :update]
    resources :comments, only: [:new, :create, :destroy]
  end
  resources :shoes, only: [:create, :destroy]
end
