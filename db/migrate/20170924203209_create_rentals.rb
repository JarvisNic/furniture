class CreateRentals < ActiveRecord::Migration[5.1]
  def change
    create_table :rentals do |t|
      t.string :client
      t.string :type_rental
      t.string :time
      t.boolean :type_state
      t.integer :time_state

      t.timestamps
    end
  end
end
