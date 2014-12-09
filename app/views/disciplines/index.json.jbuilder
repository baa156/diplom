discipline.array!(@groups) do |group|
  discipline.extract! group, :id, :name, :subject, :subject_short
  discipline.url group_url(group, format: :discipline)
end
