class AddColumnsToUser < ActiveRecord::Migration[7.0]
  def change
    add_column :users, :password, :string
    add_column :users, :remember_token, :string
    add_index :users, :remember_token
    add_index :users, :email, unique: true
  end
end
