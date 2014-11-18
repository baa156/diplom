json.array!(@dates_schedules) do |dates_schedule|
  json.extract! dates_schedule, :id, :classroom, :timestamp
  json.url dates_schedule_url(dates_schedule, format: :json)
end
