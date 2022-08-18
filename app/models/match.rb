class Match < ApplicationRecord
  belongs_to :user
  belongs_to :post
  belongs_to :role
  has_many :PostEvaluations, dependent: :destroy
  has_many :post_tasks, dependent: :destroy
end
