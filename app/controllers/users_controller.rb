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

  def show_random
    @user = User.find(current_user.id)
    @users = User.all.pluck(:name, :id)
  end

  def random
    puts params[:requested_user]
    puts params[:user_id]

    my_user_game_stats = GameStat.where(user_id: params[:user_id]).includes(:game)
    other_user_game_stats = GameStat.where(user_id: params[:requested_user]).includes(:game)

    my_games = Array.new
    other_games = Array.new

    my_user_game_stats.each do |game|
      my_games << game.game
    end

    other_user_game_stats.each do |game|
      other_games << game.game
    end

    result = (my_games & other_games)

    puts result.size

    @game = result.shuffle.first

    puts @game

    if request.xhr?
      render :json => {
          :game => @game
      }
    end
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
