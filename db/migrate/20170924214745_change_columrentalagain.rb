class ChangeColumrentalagain < ActiveRecord::Migration[5.1]
  def change
    change_column :rentals, :room_state, :string
  end
end
