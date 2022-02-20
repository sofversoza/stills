class ReviewSerializer < ActiveModel::Serializer
  attributes :id, :rating, :comment, :movie_id, :user_id 
  belongs_to :user
  belongs_to :movie
end
