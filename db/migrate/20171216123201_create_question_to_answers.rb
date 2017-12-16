class CreateQuestionToAnswers < ActiveRecord::Migration[5.1]
  def change
    create_table :question_to_answers do |t|
      t.references :game, foreign_key: true
      t.references :question, foreign_key: true
      t.references :answer, foreign_key: true
      t.integer :nb_points

      t.timestamps
    end
  end
end
