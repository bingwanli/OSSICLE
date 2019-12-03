Rails.application.routes.draw do

  root to: 'pages#home'
  devise_for :users
  resources :moodboards, only: [:index, :new, :create] do
    resources :shoes, only: [:new, :create, :index, :show, :edit, :update]
  end
  resources :shoes, only: [:delete]
end
