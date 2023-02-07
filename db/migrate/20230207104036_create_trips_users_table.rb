class CreateTripsUsersTable < ActiveRecord::Migration[7.0]
  def change
    create_table :trips_users, id: false do |t|
      t.belongs_to :trip
      t.belongs_to :user
    end
  end
end
