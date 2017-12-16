class QuestionToAnswer < ApplicationRecord
  # Associations
  belongs_to :game
  belongs_to :question
  belongs_to :answer
end
