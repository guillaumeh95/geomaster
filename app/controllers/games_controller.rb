class GamesController < ApplicationController
  before_action :find_game, only: [:edit, :update, :score]

  def create
    @game = Game.new
    @game.user = current_user
    if @game.save
      redirect_to edit_game_path(@game)
    else
      render :new
    end
  end

  def edit
    select_questions(5)
  end

  def update
    if @game.save
      redirect_to edit_game_path(@game)
    else
      render :edit
    end
  end

  def score
    @score = @game.score
  end

  private

  def game_params
    params.require(:game).permit(:score)
  end

  def find_game
    @game = Game.find(params[:id])
  end
end
