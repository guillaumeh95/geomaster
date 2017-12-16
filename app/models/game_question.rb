class GameQuestion < ApplicationRecord
  # Associations
  belongs_to :game
  belongs_to :question
end
