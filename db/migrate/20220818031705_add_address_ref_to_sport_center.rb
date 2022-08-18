class AddAddressRefToSportCenter < ActiveRecord::Migration[7.0]
  def change
    add_reference :sport_centers, :address, null: false, foreign_key: true
  end
end
