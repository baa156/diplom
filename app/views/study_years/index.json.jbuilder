json.array!(@study_years) do |study_year|
  json.extract! study_year, :id, :name, :is_current
  json.url study_year_url(study_year, format: :json)
end
