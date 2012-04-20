class CreatePermissions < ActiveRecord::Migration
  def change
    create_table :permissions do |t|
      t.integer :role
      t.string :action
      t.string :subject

      t.timestamps
    end
  end
end
