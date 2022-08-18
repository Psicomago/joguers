class Task < ApplicationRecord
    has_many :post_tasks
    belongs_to :user
end
