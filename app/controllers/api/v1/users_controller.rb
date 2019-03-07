class Api::V1::UsersController < ApplicationController
  before_action :find_score, only: [:update]

  def new
    @user = User.new
    @score = Score.new
  end

  def create
    @user = User.new(user_params)
    if @user.valid?
      @user.save
      render json: @user, status: :ok
    end
  end

  def index
    @users = User.all
    render json: @users, status: :ok
  end

  def update
    @user.update(user_params)
    if @user.save
      render json: @user, status: :accepted
    else
      render json: { errors: @user.errors.full_messages }, status: :unprocessible_entity
    end
  end

  def show
    @user = User.find(params[:id])
    render json: @user, status: :ok
  end

  private

  def user_params
    params.require(:user).permit(:username, :scores)
  end

  def find_score
    @score = Score.find(params[:id])
  end
end
