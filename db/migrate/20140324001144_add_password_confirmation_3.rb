class AddPasswordConfirmation3 < ActiveRecord::Migration
  def change
    add_column :users, :password_confirmation, :string
  end
end
