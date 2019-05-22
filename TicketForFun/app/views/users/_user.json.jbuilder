json.extract! user, :id, :name, :username, :email, :password
json.url user_url(user, format: :json)