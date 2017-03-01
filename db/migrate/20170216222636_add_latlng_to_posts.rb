class AddLatlngToPosts < ActiveRecord::Migration[5.0]
  def change
    enable_extension "hstore"
    add_column :posts, :latlng, :text
  end
end
