json.extract! customer, :id, :business_name, :cuit, :address, :contact_name, :contact_phone, :contact_email, :created_at, :updated_at
json.url customer_url(customer, format: :json)
