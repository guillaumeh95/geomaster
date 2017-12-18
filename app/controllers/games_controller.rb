class GamesController < ApplicationController
  before_action :find_game, only: [:score]

  def create
    @game = Game.new
    @game.user = current_user
    select_questions(5)
    if @game.save
      redirect_to game_game_questions_path(@game)
    else
      render :new
    end
  end

  def score
    @score = @game.score
  end

  private

  def find_game
    @game = Game.find(params[:id])
  end
end
