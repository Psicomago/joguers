json.extract! user, :id, :email, :password, :nickname, :name, :birth, :gender, :role, :phone, :created_at, :updated_at
json.url user_url(user, format: :json)
