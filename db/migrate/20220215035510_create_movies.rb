class CreateMovies < ActiveRecord::Migration[6.1]
  def change
    create_table :movies do |t|
      t.string :title
      t.string :director
      t.integer :duration
      t.integer :release_year
      t.string :genre
      t.string :current_mood
      t.string :image1
      t.string :image2
      t.string :image3

      t.timestamps
    end
  end
end
