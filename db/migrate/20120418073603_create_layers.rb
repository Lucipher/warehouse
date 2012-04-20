class CreateLayers < ActiveRecord::Migration
  def change
    create_table :layers do |t|
      t.integer :shelf_id
      t.integer :content

      t.timestamps
    end
  end
end
