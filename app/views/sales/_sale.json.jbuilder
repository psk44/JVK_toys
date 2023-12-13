json.extract! sale, :id, :toy_id, :quantity_sold, :sale_date, :total_price, :created_at, :updated_at
json.url sale_url(sale, format: :json)
