Poteti::Engine.routes.draw do
  # Move this code to application routes.rb:
  #   ActiveAdmin.routes(self)
  #   devise_for :admin_users, class_name: 'Poteti::AdminUser', module: :devise
  #
  # Because ActiveAdmin not supported nested namespace...
  # refs: https://github.com/activeadmin/active_admin/issues/615
  #
  devise_for :users, class_name: 'Poteti::User'

  resources :users, param: :name do
    resources :tips
  end
end
