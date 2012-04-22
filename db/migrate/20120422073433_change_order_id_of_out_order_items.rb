class ChangeOrderIdOfOutOrderItems < ActiveRecord::Migration
  def change
    add_column :out_order_items, :out_order_id, :integer

  end
end
