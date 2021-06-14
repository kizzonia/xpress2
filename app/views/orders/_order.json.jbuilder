json.extract! order, :id, :first_name;string, :laat_name, :address, :zipcode, :city, :state, :country, :user_id, :phone_number, :slug, :message, :status, :tracking_number, :created_at, :updated_at
json.url order_url(order, format: :json)
