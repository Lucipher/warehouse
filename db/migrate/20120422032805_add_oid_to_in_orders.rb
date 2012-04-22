class AddOidToInOrders < ActiveRecord::Migration
  def change
    add_column :in_orders, :oid, :string

  end
end
