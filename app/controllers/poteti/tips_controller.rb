module Poteti
  class TipsController < ApplicationController
    def show
      @tip = Tip.joins(:user).merge(User.where(name: params[:user_name])).find_by(id: params[:id])
      fail ActiveRecord::RecordNotFound unless @tip
      @user = @tip.user
    end

    def create
      @tip = current_user.tips.new
      @tip.attributes = tip_params
      if @tip.save
        redirect_to user_tip_path(@tip, user_name: current_user.name)
      else
        redirect_to user_tips_path(user_name: current_user.name)
      end
    end

    private

    def tip_params
      params.require(:tip).permit(
        :title,
        :body
      )
    end
  end
end
