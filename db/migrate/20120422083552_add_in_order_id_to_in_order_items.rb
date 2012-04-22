class AddInOrderIdToInOrderItems < ActiveRecord::Migration
  def change
    add_column :in_order_items, :in_order_id, :integer

  end
end
