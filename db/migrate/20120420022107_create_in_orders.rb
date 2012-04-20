class CreateInOrders < ActiveRecord::Migration
  def change
    create_table :in_orders do |t|
      t.integer :user_id

      t.timestamps
    end
  end
end
