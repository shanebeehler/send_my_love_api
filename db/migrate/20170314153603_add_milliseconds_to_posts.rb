class AddMillisecondsToPosts < ActiveRecord::Migration[5.0]
  def change
    add_column :posts, :milliseconds, :float
  end
end
