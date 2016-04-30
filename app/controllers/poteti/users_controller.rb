require_dependency 'poteti/application_controller'

module Poteti
  class UsersController < ApplicationController
    def show
      @user = Poteti::User.includes(:tips).find_by!(name: params[:name])
      @tips = @user.tips.to_a
    end
  end
end
