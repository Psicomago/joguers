class AddPostTaskRefToUserEvaluation < ActiveRecord::Migration[7.0]
  def change
    add_reference :user_evaluations, :post_task, null: false, foreign_key: true
  end
end
