class Api::V1::ScoresController < ApplicationController

  def index
    @scores = Score.all
    render json: @scores, status: :ok
  end

end
