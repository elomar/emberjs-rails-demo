Hw3::Application.routes.draw do
  devise_for :users, controllers: {sessions: 'sessions'}
  root to: "public#index"

  scope module: 'api' do
    resources :users, only: :show
    resources :facts
    resources :tips
    resources :pictures
  end

end
