require 'poteti/engine'

module Poteti
  class << self
    def routes(rails_router, options = { at: '/' })
      rails_router.mount Poteti::Engine, options
    end
  end
end
