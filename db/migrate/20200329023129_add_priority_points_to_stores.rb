class AddPriorityPointsToStores < ActiveRecord::Migration[6.0]
  def change
    add_column :stores, :priority_points, :string
  end
end
