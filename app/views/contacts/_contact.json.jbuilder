json.extract! contact, :id, :contact_number, :name, :address, :created_at, :updated_at
json.url contact_url(contact, format: :json)
