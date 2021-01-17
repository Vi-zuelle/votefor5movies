Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'

  resources :nomimovies, only:[:new, :create, :show, :index, :destroy]
  resources :movies, only:[:index, :new, :create, :show]

  # nomimovies GET    /nomimovies(.:format)   movies#index

end
