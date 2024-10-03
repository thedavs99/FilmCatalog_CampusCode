class AddSypnosisAndRunningTimeToMovies < ActiveRecord::Migration[6.1]
  def change
    add_column :movies, :sypnosis, :string
    add_column :movies, :running_time, :integer
  end
end
