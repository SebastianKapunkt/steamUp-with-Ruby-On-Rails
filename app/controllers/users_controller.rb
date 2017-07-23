class UsersController < ApplicationController
  before_action :authenticate_user!

  def show
    @user = User.find(params[:id])
    @game_stats = GameStat.where(user_id: params[:id]).includes(:game)
  end

  def index
    @users = User.all
  end

  def edit
    @user = User.find(params[:id])
  end

  def update
    @user = User.find(current_user.id)
    if @user.update(user_params)
      bypass_sign_in(@user)
      redirect_to root_path
    else
      render "edit"
    end
  end

  def create_game
    @user = User.find(params[:user_id])
    game_ids = GameStat.where(user_id: @user.id).pluck(:game_id)
    @games = Game.where.not(id: game_ids).pluck(:title, :id)
  end

  def destroy
    @user = User.find(params[:ids])
    @user.destroy

    redirect_to user_path
  end

  private
  def user_params
    params.require(:user).permit(:name, :steam_id, :email, :password)
  end
end
