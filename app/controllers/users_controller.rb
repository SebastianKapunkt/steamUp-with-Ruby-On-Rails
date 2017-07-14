class UsersController < ApplicationController
  def show
    @user = User.find(params[:id])
    @game_stat = GameStat.where(user_id: params[:id]).includes(:game)
  end

  def index
    @users = User.all
  end

  def new
    @user = User.new
  end

  def edit
    @user = User.find(params[:id])
  end

  def create
    @user = User.new(user_params)

    if @user.save
      redirect_to @user
    else
      render 'new'
    end
  end

  def update
      @user = User.find(params[:id])

    if @user.update(user_params)
      redirect_to @user
    else
      render 'edit'
    end
  end

  def destroy
    @user = User.find(params[:ids])
    @user.destroy

    redirect_to user_path
  end

  private
  def user_params
    params.require(:user).permit(:name, :steam_id)
  end
end
