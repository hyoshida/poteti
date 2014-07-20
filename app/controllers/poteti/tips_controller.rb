module Poteti
  class TipsController < ApplicationController
    def show
      @tip = Tip.find(params[:id])
      @user = @tip.user
    end
  end
end
