class Sale < ApplicationRecord
  belongs_to :toy
  after_create :decrement_inventory
  before_save :set_total_price

  private

  def set_total_price
    self.total_price = toy.price * quantity_sold
  end

  def decrement_inventory
    toy.inventory.decrement!(:quantity, self.quantity_sold)
  end
end
