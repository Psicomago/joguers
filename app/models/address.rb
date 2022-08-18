class Address < ApplicationRecord
    has_one :user
    has_one :sport_center
end
