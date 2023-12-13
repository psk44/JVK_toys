class CreateRatings < ActiveRecord::Migration[7.0]
  def change
    create_table :ratings do |t|
      t.references :toy, null: false, foreign_key: true
      t.integer :score
      t.text :review

      t.timestamps
    end
  end
end
