class MatchCenter < ApplicationRecord
  belongs_to :sport_center, dependent: :destroy
  belongs_to :sport, dependent: :destroy
end
