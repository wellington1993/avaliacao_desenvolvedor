json.extract! sale, :id, :custumer_id, :product_id, :vendor_id, :quantity, :total, :created_at, :updated_at
json.url sale_url(sale, format: :json)
