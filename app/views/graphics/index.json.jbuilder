json.array!(@graphics) do |graphic|
  json.extract! graphic, :id, :date_from, :date_to, :is_activ
  json.url graphic_url(graphic, format: :json)
end
