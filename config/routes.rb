Hw3::Application.routes.draw do
  resources :tips
  resources :facts
  root to: "public#index"
end
