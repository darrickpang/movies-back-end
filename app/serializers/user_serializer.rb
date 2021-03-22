class UserSerializer
  include FastJsonapi::ObjectSerializer
  attributes :id, :name, :comments
end
