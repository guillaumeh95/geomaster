class Question < ApplicationRecord
  # Associations
  has_many :question_choices
  has_many :game_questions
  has_many :games, through: :game_questions
end
