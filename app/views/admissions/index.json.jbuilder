json.array!(@admissions) do |admission|
  json.extract! admission, :id, :last_name, :first_name, :middle_name, :grade_level, :address, :mode
  json.url admission_url(admission, format: :json)
end
