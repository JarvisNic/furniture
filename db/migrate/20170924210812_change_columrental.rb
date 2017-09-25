class ChangeColumrental < ActiveRecord::Migration[5.1]
  def change

    rename_column :rentals, :time, :room
  end
end
