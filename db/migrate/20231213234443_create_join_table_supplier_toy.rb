class CreateJoinTableSupplierToy < ActiveRecord::Migration[7.0]
  def change
    create_join_table :suppliers, :toys do |t|
      # t.index [:supplier_id, :toy_id]
      # t.index [:toy_id, :supplier_id]
    end
  end
end
