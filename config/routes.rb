Rails.application.routes.draw do
  root to: 'pages#home'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :cars, only: [:index] do
    collection do
      get 'compare'
    end
  end

  resources :cars,only: [:index,:show] do
    resources :favourites, only: [:create]
  end

  resources :favourites,only: [:index,:show,:destroy]
  devise_for :user
end
