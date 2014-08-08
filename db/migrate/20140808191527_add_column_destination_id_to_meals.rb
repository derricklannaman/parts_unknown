class AddColumnDestinationIdToMeals < ActiveRecord::Migration
  def change
    add_column :meals, :destination_id, :integer
    add_index :meals, :destination_id
  end
end
