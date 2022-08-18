class PostTask < ApplicationRecord
  belongs_to :match, dependent: :destroy
  belongs_to :task
end
