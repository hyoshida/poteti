module Poteti
  class ApplicationController < ActionController::Base
    def default_url_options
      { user_name: (@user || current_user).try(:name) }
    end

    alias_method :tip_path, :user_tip_path
    alias_method :tips_path, :user_tips_path
    alias_method :tip_url, :user_tip_url
    alias_method :tips_url, :user_tips_url
    helper_method :tip_path, :tips_path, :tip_url, :tips_url
  end
end
