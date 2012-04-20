class AddTypeToUsers < ActiveRecord::Migration
  def change
    add_column :users, :role, :integer, :default => 5

  end
end
