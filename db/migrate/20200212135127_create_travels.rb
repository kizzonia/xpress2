class CreateTravels < ActiveRecord::Migration[5.2]
  def change
    create_table :travels do |t|
      t.integer :order_id
      t.references :user, foreign_key: true
      t.string :arrivaltime
      t.string :departtime
      t.string :location
      t.string :status
      t.datetime :departdate

      t.timestamps
    end
  end
end
