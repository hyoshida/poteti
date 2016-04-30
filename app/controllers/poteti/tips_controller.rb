require_dependency 'poteti/application_controller'

module Poteti
  class TipsController < ApplicationController
    def show
      users = Poteti::User.where(name: params[:user_name])
      @tip = Poteti::Tip.joins(:user).merge(users).find_by!(id: params[:id])
      @user = @tip.user
    end

    def create
      @tip = current_user.tips.new(tip_params)

      respond_to do |format|
        if @tip.save
          format.html { redirect_to [current_user, @tip], notice: 'Tip was successfully created.' }
          format.js   { render status: :created, location: [current_user, @tip] }
        else
          format.html { redirect_to user_tips_path }
          format.js   { render json: @tip.errors, status: :unprocessable_entity }
        end
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
