class GameStatsController < ApplicationController
  def create
    @user = User.find(params[:user_id])
    @game_stat = @user.game_stats.create(game_stat_params)
    redirect_to user_path(@user)
  end

  private
  def game_stat_params
    params.require(:game_stat).permit(:game_id, :user_id, :hours)
  end
end