Hw3::Application.routes.draw do
  resources :tips
  root to: "public#index"
end
