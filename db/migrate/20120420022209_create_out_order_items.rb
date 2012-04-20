class CreateOutOrderItems < ActiveRecord::Migration
  def change
    create_table :out_order_items do |t|
      t.integer :product_id
      t.integer :number

      t.timestamps
    end
  end
end
