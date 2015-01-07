json.array!(@tests) do |test|
  json.extract! test, :id, :test_number, :first_name, :middle_name, :last_name, :test_count, :test_status, :test_remarks
  json.url test_url(test, format: :json)
end
