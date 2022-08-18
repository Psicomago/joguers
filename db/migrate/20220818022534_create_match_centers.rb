class CreateMatchCenters < ActiveRecord::Migration[7.0]
  def change
    create_table :match_centers do |t|
      t.references :sport_center, null: false, foreign_key: true
      t.references :sport, null: false, foreign_key: true

      t.timestamps
    end
  end
end
