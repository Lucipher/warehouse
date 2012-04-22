class CreateOrderItems < ActiveRecord::Migration
  def change
    create_table :order_items do |t|
      t.integer :product_id
      t.integer :number
      t.integer :order_id
      t.string :order_type

      t.timestamps
    end
  end
end