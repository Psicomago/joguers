class CreateUserPreferences < ActiveRecord::Migration[7.0]
  def change
    create_table :user_preferences do |t|
      t.string :play_zone , null: false , default: ""
      t.integer :status
      t.integer :notification
      t.integer :notify
      t.string :game_position , null: false , default: ""
      t.string :play_zone_code , null: false , default: ""

      t.timestamps
    end
  end
end
