class RemoveLocationFromPosts < ActiveRecord::Migration[5.0]
  def change
    remove_column :posts, :location, :string
  end
end
