class RemoveForeignKeyFromImages < ActiveRecord::Migration[7.0]
  def change
    remove_foreign_key :images, name: "fk_rails_ca00296c8e"
  end
end
