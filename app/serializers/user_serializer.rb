class UserSerializer < ActiveModel::Serializer
  attributes :id, :full_name, :username, :password, :email
end
