class CommentSerializer < ActiveModel::Serializer
  attributes :id, :post, :user_id, :movie_id
end
