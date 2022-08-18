class AddSportRefToPostPreference < ActiveRecord::Migration[7.0]
  def change
    add_reference :post_preferences, :sport, null: false, foreign_key: true
  end
end
