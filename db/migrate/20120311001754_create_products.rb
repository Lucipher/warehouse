class CreateProducts < ActiveRecord::Migration
  def change
    create_table :products do |t|
      t.string :name
      t.string :pid
      t.integer :number
      t.integer :supplier_id

      t.timestamps
    end
  end
end