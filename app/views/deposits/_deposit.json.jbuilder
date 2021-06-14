json.extract! deposit, :id, :email, :amount, :payment_type, :status, :user_id, :created_at, :updated_at
json.url deposit_url(deposit, format: :json)
