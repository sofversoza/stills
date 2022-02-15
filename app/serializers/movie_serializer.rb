class MovieSerializer < ActiveModel::Serializer
  attributes :id, :title, :director, :duration, :release_year, :genre, :current_mood, :image1, :image2, :image3
end
