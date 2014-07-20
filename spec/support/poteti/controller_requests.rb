# writing Rails engine rspec controller tests
# refs:
#   http://pivotallabs.com/writing-rails-engine-rspec-controller-tests/
#   https://github.com/spree/spree/blob/master/core/lib/spree/testing_support/controller_requests.rb
#
module Poteti
  module ControllerRequests
    def poteti_get(action, parameters = nil, session = nil, flash = nil)
      process_action(action, parameters, session, flash, 'GET')
    end

    # Executes a request simulating POST HTTP method and set/volley the response
    def poteti_post(action, parameters = nil, session = nil, flash = nil)
      process_action(action, parameters, session, flash, 'POST')
    end

    # Executes a request simulating PUT HTTP method and set/volley the response
    def poteti_put(action, parameters = nil, session = nil, flash = nil)
      process_action(action, parameters, session, flash, 'PUT')
    end

    # Executes a request simulating DELETE HTTP method and set/volley the response
    def poteti_delete(action, parameters = nil, session = nil, flash = nil)
      process_action(action, parameters, session, flash, 'DELETE')
    end

    private

    def process_action(action, parameters = nil, session = nil, flash = nil, method = 'GET')
      default_parameters = { use_route: :poteti }

      parameters ||= {}
      parameters = default_parameters.merge(parameters)

      case Rails::VERSION::MAJOR
      when 4
        process(action, method, parameters, session, flash)
      when 3
        process(action, parameters, session, flash, method)
      end
    end
  end
end
