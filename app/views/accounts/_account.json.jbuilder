json.extract! account, :id, :first_name, :last_name, :address, :country, :zipcode, :email, :phone_number, :user_id, :created_at, :updated_at
json.url account_url(account, format: :json)
