json.array!(@tpermits) do |tpermit|
  json.extract! tpermit, :id, :date, :level, :test_date, :test_number, :status, :remarks, :report_card, :moral_cert, :recommendation, :student_id, :or_number, :amount, :paid_status
  json.url tpermit_url(tpermit, format: :json)
end
