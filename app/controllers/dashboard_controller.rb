class DashboardController < ApplicationController
  def index
    @sales_over_time = Sale.group_by_day(:created_at).sum(:quantity_sold)

    @toys_inventory = Toy.includes(:inventory, :suppliers).all

    @toys_inventory.each do |toy|
      toy_total_quantity = toy.inventory.quantity
      toy.total_worth = toy.price * toy_total_quantity

    end
  end
end
