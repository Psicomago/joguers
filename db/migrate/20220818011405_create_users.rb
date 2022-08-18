class CreateUsers < ActiveRecord::Migration[7.0]
  def change
    create_table :users do |t|
      t.string :email , null: false
      t.string :password , null: false
      t.string :nickname , null: false
      t.string :name , null: false , default: ""
      t.date :birth
      t.integer :gender
      t.integer :role
      t.string :phone

      t.timestamps
    end
  end
end
