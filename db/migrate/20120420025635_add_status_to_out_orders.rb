class AddStatusToOutOrders < ActiveRecord::Migration
  def change
    add_column :out_orders, :status, :integer

  end
end
