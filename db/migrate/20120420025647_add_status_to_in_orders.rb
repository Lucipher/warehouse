class AddStatusToInOrders < ActiveRecord::Migration
  def change
    add_column :in_orders, :status, :integer

  end
end
