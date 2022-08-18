class PostTask < ApplicationRecord
  belongs_to :match
  belongs_to :task
end
