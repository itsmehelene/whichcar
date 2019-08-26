Rails.application.routes.draw do
  devise_for :users
  root to: 'cars#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :cars,only: [:index,:show] do
    resources :favourites, only: [:index,:create]
  end
  resources :favourites,only: [:destroy]

end
