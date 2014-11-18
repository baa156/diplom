json.array!(@groups) do |group|
  json.extract! group, :id, :name, :subject, :subject_short
  json.url group_url(group, format: :json)
end
