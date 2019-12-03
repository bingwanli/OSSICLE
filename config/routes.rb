Rails.application.routes.draw do

  root to: 'pages#home'

  devise_for :users
  resources :moodboards do
    resources :shoes, only: [:new, :index, :show, :edit, :update]
  end
  resources :shoes, only: [:create, :delete]
end
