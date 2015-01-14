json.array!(@permits) do |permit|
  json.extract! permit, :id, :date, :level, :test_date, :release, :report_card, :moral_cert, :recommendation
  json.url permit_url(permit, format: :json)
end
