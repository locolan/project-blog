class FixColumnName < ActiveRecord::Migration
  def change
    rename_column :users, :name, :username
    rename_column :users, :secure_password, :password
  end
end
