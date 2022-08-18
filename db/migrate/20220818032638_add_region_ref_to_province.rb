class AddRegionRefToProvince < ActiveRecord::Migration[7.0]
  def change
    add_reference :provinces, :region, null: false, foreign_key: true
  end
end
