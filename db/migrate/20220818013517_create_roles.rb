class CreateRoles < ActiveRecord::Migration[7.0]
  def change
    create_table :roles do |t|
      t.string :post_role , null: false

      t.timestamps
    end
  end
end
