class CreateClients < ActiveRecord::Migration[5.1]
  def change
    create_table :clients do |t|
      t.string :name
      t.integer :year
      t.string :genere
      t.string :stateclient
      t.string :pic

      t.timestamps
    end
  end
end
