json.array!(@reservations) do |reservation|
  json.extract! reservation, :id, :status, :remarks, :amount, :student_id, :or_number
  json.url reservation_url(reservation, format: :json)
end
