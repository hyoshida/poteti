module Poteti
  class TipsController < ApplicationController
    def show
      @tip = Tip.joins(:user).merge(User.where(name: params[:user_name])).find_by(id: params[:id])
      fail ActiveRecord::RecordNotFound unless @tip
      @user = @tip.user
    end
  end
end
