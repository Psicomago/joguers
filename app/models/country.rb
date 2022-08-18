class Country < ApplicationRecord
    has_many :region, dependent: :destroy
end
