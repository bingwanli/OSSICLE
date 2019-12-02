Rails.application.routes.draw do
  get 'shoes/index'
  get 'shoes/new'
  get 'shoes/create'
  devise_for :users
  root to: 'shoes#index'


  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
