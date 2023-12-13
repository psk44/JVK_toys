json.extract! inventory, :id, :toy_id, :quantity, :low_inventory_threshold, :created_at, :updated_at
json.url inventory_url(inventory, format: :json)
