class User < ApplicationRecord
    has_one :user_preference
    has_many :posts
    has_many :comments
    has_many :tasks, through: :post_task
    has_many :sports, through: :sport_user
    has_many :roles, through: :match
    belongs_to :address, dependent: :destroy
end
