class MovieSerializer < ActiveModel::Serializer
  attributes :id, :name, :year, :poster
end
