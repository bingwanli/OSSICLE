Rails.application.routes.draw do
  root to: 'pages#home'
  devise_for :users
  get 'moodboards/index'
  get 'moodboards/new'
  post 'moodboards/create'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
