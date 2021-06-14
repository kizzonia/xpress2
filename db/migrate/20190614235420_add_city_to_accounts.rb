class AddCityToAccounts < ActiveRecord::Migration[5.2]
  def change
    add_column :accounts, :city, :string
  end
end
