class MovieUserSerializer < ActiveModel::Serializer
  attributes :id, :user_id, :movie_id
end
