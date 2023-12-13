class CreateToys < ActiveRecord::Migration[7.0]
  def change
    create_table :toys do |t|
      t.string :name
      t.text :description
      t.decimal :price
      t.references :toy_type, null: false, foreign_key: true

      t.timestamps
    end
  end
end
