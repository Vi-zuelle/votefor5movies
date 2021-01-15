Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'

  resources :nomimovies, only:[:new, :create, :show, :index, :destroy]
end
