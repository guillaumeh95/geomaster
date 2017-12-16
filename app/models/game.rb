class Game < ApplicationRecord
  # Associations
  belongs_to :user
  has_many :question_to_answers
end
