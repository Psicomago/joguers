class Region < ApplicationRecord
    belongs_to :country
    has_many :province, dependent: :destroy
end
