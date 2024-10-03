class RemoveReleaseYearFromMovies < ActiveRecord::Migration[6.1]
  def change
    remove_column :movies, :release_year, :string
  end
end
