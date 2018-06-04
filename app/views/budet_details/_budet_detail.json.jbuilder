json.extract! budet_detail, :id, :budget_id, :product_id, :amount, :unit_price, :subtotal, :created_at, :updated_at
json.url budet_detail_url(budet_detail, format: :json)
