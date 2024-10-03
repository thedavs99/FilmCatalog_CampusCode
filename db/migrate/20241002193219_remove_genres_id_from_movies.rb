class RemoveGenresIdFromMovies < ActiveRecord::Migration[6.1]
  def change
    remove_column :movies, :genres_id, :string
  end
end
