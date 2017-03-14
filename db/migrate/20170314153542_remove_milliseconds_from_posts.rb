class RemoveMillisecondsFromPosts < ActiveRecord::Migration[5.0]
  def change
    remove_column :posts, :milliseconds, :integer
  end
end
