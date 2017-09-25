class CreateStates < ActiveRecord::Migration[5.1]
  def change
    create_table :states do |t|
      t.string :name
      t.string :type
      t.integer :area
      t.integer :countfloor
      t.integer :countRoom
      t.string :address

      t.timestamps
    end
  end
end
