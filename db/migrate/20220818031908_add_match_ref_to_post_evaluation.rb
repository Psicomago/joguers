class AddMatchRefToPostEvaluation < ActiveRecord::Migration[7.0]
  def change
    add_reference :post_evaluations, :match, null: false, foreign_key: true
  end
end
