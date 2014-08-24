module Poteti
  class ApplicationController < ActionController::Base
    # refs: http://stackoverflow.com/questions/5729476/render-without-layout-when-format-is-js-needs-drying
    layout -> (c) { c.request.xhr? ? false : 'poteti/application' }
  end
end
