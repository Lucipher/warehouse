class CreateStorages < ActiveRecord::Migration
  def change
    create_table :storages do |t|
      t.integer :product_id
      t.integer :number

      t.timestamps
    end
  end
end
