class CreatePostEvaluations < ActiveRecord::Migration[7.0]
  def change
    create_table :post_evaluations do |t|
      t.integer :experience

      t.timestamps
    end
  end
end
