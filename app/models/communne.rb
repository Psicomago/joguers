class Communne < ApplicationRecord
    belongs_to :province
    has_many :address
end
