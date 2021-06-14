class CreateLocations < ActiveRecord::Migration[5.2]
  def change
    create_table :locations do |t|
      t.text :status
      t.datetime :depature_time
      t.integer :order_id
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
