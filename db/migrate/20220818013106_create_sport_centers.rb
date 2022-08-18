class CreateSportCenters < ActiveRecord::Migration[7.0]
  def change
    create_table :sport_centers do |t|
      t.string :name_center , null: false

      t.timestamps
    end
  end
end
