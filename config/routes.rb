Poteti::Engine.routes.draw do
  devise_for :users, class_name: 'Poteti::User'

  resources :users do
    resources :tips
  end
end
