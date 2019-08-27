Rails.application.routes.draw do
  root to: 'pages#home'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :cars,only: [:index,:show] do
    collection do
    get 'compare'
  end
    resources :favourites, only: [:create]
  end
  resources :favourites,only: [:destroy,:index]
  devise_for :users

end
