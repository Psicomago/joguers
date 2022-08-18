class CreatePostPreferences < ActiveRecord::Migration[7.0]
  def change
    create_table :post_preferences do |t|
      t.datetime :date_match
      t.integer :amount_players
      t.time :match_length
      t.string :post_zone_code , null: false , default: ""

      t.timestamps
    end
  end
end
