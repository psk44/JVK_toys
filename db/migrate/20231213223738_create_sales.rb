class CreateSales < ActiveRecord::Migration[7.0]
  def change
    create_table :sales do |t|
      t.references :toy, null: false, foreign_key: true
      t.integer :quantity_sold
      t.datetime :sale_date
      t.decimal :total_price

      t.timestamps
    end
  end
end
