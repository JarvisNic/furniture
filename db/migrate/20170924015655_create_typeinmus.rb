class CreateTypeinmus < ActiveRecord::Migration[5.1]
  def change
    create_table :typeinmus do |t|
      t.string :name

      t.timestamps
    end
  end
end
