class QuestionToAnswer < ApplicationRecord
  belongs_to :game
  belongs_to :question
  belongs_to :answer
end
