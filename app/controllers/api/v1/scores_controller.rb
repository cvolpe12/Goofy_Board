class Api::V1::ScoresController < ApplicationController

  def new
    @score = Score.new
  end

  def create
    @score = Score.create
    render json: @score, status: :ok
  end

  def index
    @scores = Score.all
    render json: @scores, status: :ok
  end

end
