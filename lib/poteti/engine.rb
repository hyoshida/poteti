require 'slim'
require 'devise'
require 'activeadmin'
require 'rails-assets-jquery'
require 'rails-assets-bootstrap-sass'

module Poteti
  class Engine < ::Rails::Engine
    isolate_namespace Poteti

    initializer 'poteti.initializer.activeadmin' do
      ActiveAdmin.application.load_paths << File.join(config.root, 'lib/poteti/admin')
    end
  end
end
