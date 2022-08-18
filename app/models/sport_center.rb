class SportCenter < ApplicationRecord
    belongs_to :address, dependent: :destroy
    has_many : sports through => match_sport
end
