json.array!(@graphic_types) do |graphic_type|
  json.extract! graphic_type, :id, :name
  json.url graphic_type_url(graphic_type, format: :json)
end
