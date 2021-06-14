class AddNewVlauesToLocations < ActiveRecord::Migration[5.2]
  def change
    add_column :locations, :arrivaltime, :string
    add_column :locations, :departtime, :string
  end
end
