class CreateUserEvaluations < ActiveRecord::Migration[7.0]
  def change
    create_table :user_evaluations do |t|
      t.integer :puntually
      t.integer :attendance
      t.integer :cooperation

      t.timestamps
    end
  end
end
