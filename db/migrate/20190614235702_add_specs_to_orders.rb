class AddSpecsToOrders < ActiveRecord::Migration[5.2]
  def change
    add_column :orders, :package_size, :integer
    add_column :orders, :package_value, :integer
  end
end
