class CreateMovies < ActiveRecord::Migration[6.1]
  def change
    create_table :movies do |t|
      t.string :title
      t.integer :release_year
      t.references :genres, null: false, foreign_key: true
      t.references :director, null: false, foreign_key: true
      t.string :language
      t.string :country

      t.timestamps
    end
  end
end
