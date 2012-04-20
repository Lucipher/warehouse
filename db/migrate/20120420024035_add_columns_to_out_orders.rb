class AddColumnsToOutOrders < ActiveRecord::Migration
  def change
    add_column :out_orders, :product_id, :integer

    add_column :out_orders, :number, :integer

  end
end
