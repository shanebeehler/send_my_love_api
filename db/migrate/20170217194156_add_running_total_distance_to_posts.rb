class AddRunningTotalDistanceToPosts < ActiveRecord::Migration[5.0]
  def change
    add_column :posts, :running_total_distance, :float
  end
end
