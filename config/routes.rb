Hw3::Application.routes.draw do
  resources :tips
  resources :facts
  resources :pictures
  root to: "public#index"
end
