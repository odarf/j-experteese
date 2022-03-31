class CreateImages < ActiveRecord::Migration[7.0]
  def change
    create_table :images do |t|
      t.string :file
      t.string :name
      t.float :avg_value
      t.integer :theme_id

      t.timestamps
    end
  end
end
