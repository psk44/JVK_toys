class CreateInventories < ActiveRecord::Migration[7.0]
  def change
    create_table :inventories do |t|
      t.references :toy, null: false, foreign_key: true
      t.integer :quantity
      t.integer :low_inventory_threshold

      t.timestamps
    end
  end
end
