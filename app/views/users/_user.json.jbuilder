json.extract! user, :id, :name, :password_hash, :password_salt, :email, :created_at, :updated_at
json.url user_url(user, format: :json)
