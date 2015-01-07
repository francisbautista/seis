json.array!(@guardianships) do |guardianship|
  json.extract! guardianship, :id, :payment_id, :student_id
  json.url guardianship_url(guardianship, format: :json)
end
