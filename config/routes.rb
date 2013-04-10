Hw3::Application.routes.draw do
  devise_for :users, controllers: {sessions: 'sessions'}
  resources :pictures
  root to: "public#index"

  namespace :api do
    resources :users, only: [:index, :show]
    resources :facts
    resources :tips
  end

  get '*ember' => 'home#index'
end
