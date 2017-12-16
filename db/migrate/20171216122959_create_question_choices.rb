class CreateQuestionChoices < ActiveRecord::Migration[5.1]
  def change
    create_table :question_choices do |t|
      t.string :choice
      t.references :question, foreign_key: true

      t.timestamps
    end
  end
end
