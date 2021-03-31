class MovieUserSerializer < ActiveModel::Serializer
  attributes :id, :movie_name, :user_id
end
