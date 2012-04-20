class AddColumnsToLayers < ActiveRecord::Migration
  def change
    add_column :layers, :available, :integer

    add_column :layers, :locked, :integer

  end
end
