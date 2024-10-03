class AddCountryAndFavoriteGenteToDirectors < ActiveRecord::Migration[6.1]
  def change
    add_column :directors, :country, :string
    add_reference :directors, :genre, null: false, foreign_key: true, default: 0
  end
end
