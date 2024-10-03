class RemoveGenresFromMovies < ActiveRecord::Migration[6.1]
  def change
    remove_column :movies, :genres, :string
  end
end
