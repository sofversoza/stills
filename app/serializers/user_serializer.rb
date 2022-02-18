class UserSerializer < ActiveModel::Serializer
  attributes :id, :full_name, :username, :password, :email
  has_many :favorites
  has_many :reviews
  has_many :movies
end
