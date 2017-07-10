class UserController < ApplicationController
  def show
    @user = User.find(params[:id])
    @gamedata = GameData.where(user_id: params[:id])

    @game = Array.new
    @gamedata.each do |data|
      @game << Game.find(data.game_id)
    end
  end
end
