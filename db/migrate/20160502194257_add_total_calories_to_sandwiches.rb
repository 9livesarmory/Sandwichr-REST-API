class AddTotalCaloriesToSandwiches < ActiveRecord::Migration
  def change
    add_column :sandwiches, :total_calories, :integer, default: "Unknown"
  end
end
