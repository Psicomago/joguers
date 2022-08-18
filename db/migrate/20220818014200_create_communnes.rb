class CreateCommunnes < ActiveRecord::Migration[7.0]
  def change
    create_table :communnes do |t|
      t.string :communne_name , null: false, default: ""
      t.string :communne_code , null: false, default: ""

      t.timestamps
    end
  end
end
