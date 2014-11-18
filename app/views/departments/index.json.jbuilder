json.array!(@departments) do |department|
  json.extract! department, :id, :number, :name, :zav_kaf, :secretary, :director
  json.url department_url(department, format: :json)
end
