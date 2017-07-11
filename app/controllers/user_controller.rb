class UserController < ApplicationController
  def show
    @user = User.find(params[:id])
    @test = GameStat.where(user_id: params[:id]).includes(:game)
  end
end
