Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :cars,only: [:index,:show] do
    resources :favourites, only: [:create]
  end
  resources :favourites,only: [:destroy,:index]

end
