class Changecolumnstae < ActiveRecord::Migration[5.1]
  def change

    rename_column :states, :type, :typeofstate
  end
end
