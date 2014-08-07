Poteti::Engine.routes.draw do
  devise_for :admin_users, class_name: "Poteti::AdminUser"
  devise_for :users, class_name: 'Poteti::User'

  resources :users, param: :name do
    resources :tips
  end
end
