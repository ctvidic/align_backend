class DropUsersTripsTable < ActiveRecord::Migration[7.0]
  def change
    drop_table :users_trips
  end
end
