class AddInterfaceToSuppliers < ActiveRecord::Migration
  def change
    add_column :suppliers, :interface, :string

  end
end
