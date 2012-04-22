class AddOidToOutOrders < ActiveRecord::Migration
  def change
    add_column :out_orders, :oid, :string

  end
end
