class AddSportCenterRefToPostPreference < ActiveRecord::Migration[7.0]
  def change
    add_reference :post_preferences, :sport_center, null: false, foreign_key: true
  end
end
