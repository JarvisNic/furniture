class ChangeColumrentalnow < ActiveRecord::Migration[5.1]
  def change
    rename_column :rentals, :time_state, :room_state
    
  end
end
