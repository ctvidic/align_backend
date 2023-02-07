class UsersTripsTable < ActiveRecord::Migration[7.0]
  def change
    create_table :users_trips, id: false do |t|
      t.belongs_to :trip
      t.belongs_to :user
    end
  end
end
