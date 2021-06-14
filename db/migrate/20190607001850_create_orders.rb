class CreateOrders < ActiveRecord::Migration[5.2]
  def change
    create_table :orders do |t|
      t.string :first_name
      t.string :last_name
      t.string :address
      t.string :zipcode
      t.string :city
      t.string :state
      t.string :country
      t.references :user, foreign_key: true
      t.string :phone_number
      t.string :slug
      t.text :message
      t.boolean :status
      t.string :tracking_number

      t.timestamps
    end
  end
end
