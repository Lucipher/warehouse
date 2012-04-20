class CreateOutOrders < ActiveRecord::Migration
  def change
    create_table :out_orders do |t|
      t.integer :user_id

      t.timestamps
    end
  end
end
