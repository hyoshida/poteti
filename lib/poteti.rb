require 'poteti/engine'

module Poteti
  class << self
    def routes(rails_router, options = { at: '/' })
      ActiveAdmin.routes(rails_router)
      rails_router.devise_for :admin_users, class_name: 'Poteti::AdminUser', module: :devise

      rails_router.mount Poteti::Engine, options
    end
  end
end
