json.array!(@students) do |student|
  json.extract! student, :id, :id_number, :first_name, :middle_name, :last_name, :admission_date, :batch_number, :year_level, :section, :gender, :birthdate, :nationality, :birth_place, :religion, :street, :barangay, :city, :postal_code, :country, :lancaster_resident, :landline, :mobile, :email, :institution_name, :year_level, :school_year, :grade, :general_avg
  json.url student_url(student, format: :json)
end
