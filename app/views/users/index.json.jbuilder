json.array!(@users) do |user|
  json.extract! user, :id, :first_name, :second_name, :last_name, :login, :description, :is_operator, :is_admin
  json.url user_url(user, format: :json)
end
