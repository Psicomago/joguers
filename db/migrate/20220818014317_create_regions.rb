class CreateRegions < ActiveRecord::Migration[7.0]
  def change
    create_table :regions do |t|
      t.string :region_name , null: false, default: ""
      t.string :region_code , null: false, default: ""

      t.timestamps
    end
  end
end
