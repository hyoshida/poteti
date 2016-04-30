Poteti::Engine.routes.draw do
  devise_for :users, class_name: 'Poteti::User', module: :devise

  resources :users, param: :name do
    resources :tips
  end

  root to: 'home#index'
end
