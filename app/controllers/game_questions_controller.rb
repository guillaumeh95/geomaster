class GameQuestionsController < ApplicationController
  before_action :find_game, only: [:index]

  def index
    @game_questions = @game.game_questions
  end

  private

  def find_game
    @game = Game.find(params[:game_id])
  end
end
