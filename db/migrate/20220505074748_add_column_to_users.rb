class AddColumnToUsers < ActiveRecord::Migration[7.0]
  def change
    add_column :users, :password_digest, :string
    add_column :users, :remember_token, :string
    add_index :users, :remember_token
  end
end
