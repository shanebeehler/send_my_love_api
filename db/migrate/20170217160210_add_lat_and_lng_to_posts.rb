class AddLatAndLngToPosts < ActiveRecord::Migration[5.0]
  def change
    add_column :posts, :lat, :float
    add_column :posts, :lng, :float
  end
end
