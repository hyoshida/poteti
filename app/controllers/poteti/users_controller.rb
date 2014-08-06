module Poteti
  class UsersController < ApplicationController
    def show
      @user = User.find_by(name: params[:name])
      fail ActiveRecord::RecordNotFound unless @user
    end
  end
end
