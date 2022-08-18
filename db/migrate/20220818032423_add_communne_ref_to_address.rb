class AddCommunneRefToAddress < ActiveRecord::Migration[7.0]
  def change
    add_reference :addresses, :communne, null: false, foreign_key: true
  end
end
