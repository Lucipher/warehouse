class AddColumnsToInOrders < ActiveRecord::Migration
  def change
    add_column :in_orders, :product_id, :integer

    add_column :in_orders, :number, :integer

  end
end
