json.array!(@payments) do |payment|
  json.extract! payment, :id, :mode, :testing_amount, :reservation_amount, :tuition_amount, :discount_rate, :discount_desc, :installment_number, :or_number
  json.url payment_url(payment, format: :json)
end
