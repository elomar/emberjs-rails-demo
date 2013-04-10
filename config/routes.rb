Hw3::Application.routes.draw do
  devise_for :users, controllers: {sessions: 'sessions'}
  root to: "public#index"

  namespace :api do
    resources :users, only: [:index, :show]
    resources :facts
    resources :tips
    resources :pictures
  end

  get '*ember' => 'home#index'
end
