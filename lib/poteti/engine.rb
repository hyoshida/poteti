require 'slim'

module Poteti
  class Engine < ::Rails::Engine
    isolate_namespace Poteti
  end
end
