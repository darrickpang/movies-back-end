class CommentSerializer < ActiveModel::Serializer
  attributes :id, :user_name, :post, :user_id, :movie_id
end
