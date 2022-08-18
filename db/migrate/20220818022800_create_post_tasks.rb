class CreatePostTasks < ActiveRecord::Migration[7.0]
  def change
    create_table :post_tasks do |t|
      t.references :match, null: false, foreign_key: true
      t.references :task, null: false, foreign_key: true

      t.timestamps
    end
  end
end
