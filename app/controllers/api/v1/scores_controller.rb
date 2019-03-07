class Api::V1::ScoresController < ApplicationController

  def new
    @score = Score.new
  end

  def create
    # byebug
    @score = Score.create(score_params)
    render json: @score, status: :ok
  end

  def index
    @scores = Score.all
    render json: @scores, status: :ok
  end

  private

  def score_params
    params.require(:score).permit(:points, :user_id)
  end

end
