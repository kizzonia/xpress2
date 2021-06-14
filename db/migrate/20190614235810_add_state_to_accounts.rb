class AddStateToAccounts < ActiveRecord::Migration[5.2]
  def change
    add_column :accounts, :state, :string
  end
end
