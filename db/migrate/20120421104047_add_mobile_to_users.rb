class AddMobileToUsers < ActiveRecord::Migration
  def change
    add_column :users, :mobile, :string

    add_column :users, :address, :string

    add_column :users, :name, :string

  end
end
