class AddDistanceFromLastCityToPosts < ActiveRecord::Migration[5.0]
  def change
    add_column :posts, :distance_from_last_city, :float
  end
end
