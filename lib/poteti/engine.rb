require 'slim'
require 'devise'
require 'activeadmin'

module Poteti
  class Engine < ::Rails::Engine
    isolate_namespace Poteti
  end
end
