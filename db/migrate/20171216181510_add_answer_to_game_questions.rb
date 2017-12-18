class AddAnswerToGameQuestions < ActiveRecord::Migration[5.1]
  def change
    add_column :game_questions, :answer, :string
  end
end
