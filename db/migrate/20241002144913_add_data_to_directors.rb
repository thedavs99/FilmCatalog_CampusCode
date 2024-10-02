class AddDataToDirectors < ActiveRecord::Migration[6.1]
  def change
    add_column :directors, :last_name, :string
    add_column :directors, :birth_day, :datetime
  end
end
