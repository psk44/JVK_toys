json.extract! supplier, :id, :name, :email, :phone, :address, :created_at, :updated_at
json.url supplier_url(supplier, format: :json)
