json.array!(@weeks_schedules) do |weeks_schedule|
  json.extract! weeks_schedule, :id, :day, :classroom, :week_type, :date_from, :date_to, :time_p
  json.url weeks_schedule_url(weeks_schedule, format: :json)
end
