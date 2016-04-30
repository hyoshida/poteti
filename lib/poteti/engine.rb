require 'slim'
require 'devise'
require 'jquery-rails'
require 'sass-rails'
require 'bootstrap-sass'

module Poteti
  class Engine < ::Rails::Engine
    isolate_namespace Poteti
  end
end
