class DashboardController < ApplicationController
  def index
    @toys_inventory = Toy.includes(:inventory, :suppliers).all
    
    @toys_inventory.each do |toy|
      toy_total_quantity = toy.inventory.quantity
      toy.total_worth = toy.price * toy_total_quantity
    
    end
  end
end

