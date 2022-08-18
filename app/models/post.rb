class Post < ApplicationRecord
    belongs_to :User
    has_one :post_preference, dependent: :destroy
end
