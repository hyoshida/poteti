require 'slim'
require 'devise'
require 'activeadmin'
require 'jquery-rails'
require 'sass-rails'
require 'bootstrap-sass'

module Poteti
  class Engine < ::Rails::Engine
    isolate_namespace Poteti

    initializer 'poteti.initializer.activeadmin' do
      ActiveAdmin.application.load_paths << File.join(config.root, 'lib/poteti/admin')
    end
  end
end
