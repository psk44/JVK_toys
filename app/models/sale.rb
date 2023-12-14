class Sale < ApplicationRecord
  belongs_to :toy
  after_create :decrement_inventory

  private

  def decrement_inventory
    toy.inventory.decrement!(:quantity, self.quantity_sold)
  end
end
