class CreateDeposits < ActiveRecord::Migration[5.2]
  def change
    create_table :deposits do |t|
      t.string :email
      t.integer :amount
      t.string :payment_type
      t.boolean :status
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
