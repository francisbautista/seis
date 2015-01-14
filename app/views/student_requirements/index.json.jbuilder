json.array!(@student_requirements) do |student_requirement|
  json.extract! student_requirement, :id, :student_id, :requirement_id, :status
  json.url student_requirement_url(student_requirement, format: :json)
end
