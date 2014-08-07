Rails.application.routes.draw do
  ActiveAdmin.routes(self)
  devise_for :admin_users, class_name: 'Poteti::AdminUser', module: :devise

  mount Poteti::Engine, at: '/'
end
