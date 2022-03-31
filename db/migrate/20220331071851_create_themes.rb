class CreateThemes < ActiveRecord::Migration[7.0]
  def change
    create_table :themes do |t|
      t.string :name
      t.integer :items_qty

      t.timestamps
    end
  end
end
