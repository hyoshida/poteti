module Poteti
  module ApplicationHelper
    def home?
      controller_name.to_sym == :home
    end
  end
end
