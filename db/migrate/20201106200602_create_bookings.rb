class CreateBookings < ActiveRecord::Migration[5.2]
  def change
    create_table :bookings do |t|
      t. references :flight, null: false, foreign_key: true
      
      t.timestamps
    end
  end
end
