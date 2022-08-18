class Province < ApplicationRecord
    belongs_to :region
    has_many :communne, dependent: :destroy
end
