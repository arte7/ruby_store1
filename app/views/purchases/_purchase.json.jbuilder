json.extract! purchase, :id, :product_id, :quantity, :created_at, :updated_at
json.url purchase_url(purchase, format: :json)
