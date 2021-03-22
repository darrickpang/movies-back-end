class CommentSerializer < ActiveModel::Serializer
  attributes :id, :comment, :user_id, :movie_id
end
