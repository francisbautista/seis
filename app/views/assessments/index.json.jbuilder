json.array!(@assessments) do |assessment|
  json.extract! assessment, :id, :installment, :mode, :tuition, :discount, :discount_desc, :installment_number, :or_number, :student_id
  json.url assessment_url(assessment, format: :json)
end
