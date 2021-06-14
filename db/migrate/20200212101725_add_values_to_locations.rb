class AddValuesToLocations < ActiveRecord::Migration[5.2]
  def change
    add_column :locations, :a_time, :string
    add_column :locations, :d_time, :string
    add_column :locations, :date, :datetime
  end
end
