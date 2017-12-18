Rails.application.routes.draw do
  devise_for :users

  # Routes
  root to: 'pages#home'
  resources :games, only: [:create, :edit, :update] do
    member do
      get 'score', to: "games#score"
    end
  end
end
