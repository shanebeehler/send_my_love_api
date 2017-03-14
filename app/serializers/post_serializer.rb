class PostSerializer < ActiveModel::Serializer
  attributes :id, :user_id, :name, :city, :country, :lat, :lng, :distance_from_last_city, :milliseconds,
             :running_total_distance, :created_at
end
