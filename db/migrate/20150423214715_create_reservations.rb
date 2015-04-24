class CreateReservations < ActiveRecord::Migration
  def change
    create_table :reservations do |t|
      t.date :date
      t.time :time
      t.integer :seats
      t.integer :user_id
      t.integer :restaurant_id

      t.timestamps null: false
    end
  end
end
