Rails.application.routes.draw do
  devise_for :users
  root "projects#index"

  get 'about', to: 'pages#about'

  resources :projects do
    resources :tickets
  end
end
