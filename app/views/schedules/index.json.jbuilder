json.array!(@schedules) do |schedule|
  json.extract! schedule, :id, :graphic_id, :group_id
  json.url schedule_url(schedule, format: :json)
end
