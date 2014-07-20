module Poteti
  module Generators
    class InstallGenerator < Rails::Generators::Base
      source_root File.expand_path('../templates', __FILE__)

      def copy_initializers
        template 'initializers/devise.rb', 'config/initializers/devise.rb'
      end

      def add_routes
        route "mount Poteti::Engine => '/'"
      end
    end
  end
end
