# typed: true
class AddRoleToUsers < ActiveRecord::Migration[5.1]
  def change
    add_column :users, :role, :string
  end
end
