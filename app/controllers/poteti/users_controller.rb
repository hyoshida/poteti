module Poteti
  class UsersController < ApplicationController
    def show
      @user = User.joins(:tips).find_by(name: params[:name])
      fail ActiveRecord::RecordNotFound unless @user
      @tips = @user.tips
    end
  end
end
