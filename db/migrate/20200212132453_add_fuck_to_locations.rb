class AddFuckToLocations < ActiveRecord::Migration[5.2]
  def change
    add_column :locations, :departdate, :datetime
  end
end
