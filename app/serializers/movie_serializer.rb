class MovieSerializer < ActiveModel::Serializer
  attributes :id, :title, :director, :duration, :release_year, :genre,  :image1, :image2, :image3, :cinematographer, :description, :starring, :awards, :slug
  has_many :reviews
  has_many :favorites
  has_many :users
end
