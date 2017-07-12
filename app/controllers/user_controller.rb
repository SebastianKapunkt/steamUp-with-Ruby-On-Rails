class UserController < ApplicationController
  def show
    @user = User.find(params[:id])
    @game_stat = GameStat.where(user_id: params[:id]).includes(:game)
  end

  def index
    @users = User.all
  end
end
