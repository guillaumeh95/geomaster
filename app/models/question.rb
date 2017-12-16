class Question < ApplicationRecord
  # Associations
  has_many :question_to_answers
  has_many :question_choices
end
