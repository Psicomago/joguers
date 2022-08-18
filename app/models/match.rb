class Match < ApplicationRecord
  belongs_to :user
  belongs_to :post
  belongs_to :role
end
