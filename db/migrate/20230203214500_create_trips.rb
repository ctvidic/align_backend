class CreateTrips < ActiveRecord::Migration[7.0]
  def change
    create_table :trips do |t|
      t.integer :trip_id
      t.string :name
      t.string :description

      t.timestamps
    end
  end
end
