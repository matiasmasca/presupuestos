json.extract! budget, :id, :customer_id, :title, :description, :start_date, :end_date, :created_at, :updated_at
json.url budget_url(budget, format: :json)
