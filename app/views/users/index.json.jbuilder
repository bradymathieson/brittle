json.array!(@users) do |user|
  json.extract! user, :id, :name, :username, :description, :location
  json.url user_url(user, format: :json)
end
