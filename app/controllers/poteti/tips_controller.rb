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
        redirect_to @tip
      else
        redirect_to tips_path
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
