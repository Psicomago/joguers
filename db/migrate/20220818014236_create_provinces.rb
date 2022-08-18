class CreateProvinces < ActiveRecord::Migration[7.0]
  def change
    create_table :provinces do |t|
      t.string :province_name , null: false, default: ""
      t.string :province_code ,null: false, default: ""

      t.timestamps
    end
  end
end
