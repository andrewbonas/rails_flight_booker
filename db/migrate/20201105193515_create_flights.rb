class CreateFlights < ActiveRecord::Migration[5.2]
  def change
    create_table :flights do |t|
      t.integer :duration, null: false
      t.date :date, null: false
      t.time :time, null: false
      t.references :departure_airport, foreign_key: { to_table: :airports }, index: true
      t.references :arrival_airport, foreign_key: { to_table: :airports }, index: true

      t.timestamps
    end
  end
end
