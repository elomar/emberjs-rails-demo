Hw3::Application.routes.draw do
  devise_for :users
  resources :tips
  resources :facts
  resources :pictures
  root to: "public#index"
end
