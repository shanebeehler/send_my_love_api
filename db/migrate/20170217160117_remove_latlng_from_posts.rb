class RemoveLatlngFromPosts < ActiveRecord::Migration[5.0]
  def change
    remove_column :posts, :latlng, :text
  end
end
