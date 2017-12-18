class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  before_action :authenticate_user!

  private

  def select_questions(nb_questions)
    game_questions = []
    nb_questions.times do
      game_question = GameQuestion.new
      game_question.question = Question.all.sample
      game_question.game = @game
      game_question.save
      game_questions << game_question
    end
    return game_questions
  end

  def selection_question_choices(nb_questions)
  end
end
