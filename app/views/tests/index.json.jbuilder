json.array!(@tests) do |test|
  json.extract! test, :id, :test_number, :status, :remarks, :student_id
  json.url test_url(test, format: :json)
end
