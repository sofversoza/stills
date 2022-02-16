class AddColumnsToMovies < ActiveRecord::Migration[6.1]
  def change
    add_column :movies, :cinematographer, :string
    add_column :movies, :description, :text
    add_column :movies, :starring, :text
    add_column :movies, :awards, :text
  end
end
