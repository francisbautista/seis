json.array!(@parents) do |parent|
  json.extract! parent, :id, :first_name, :middle_name, :last_name, :relation, :birthdate, :occupation, :email, :landline, :mobile, :street, :barangay, :city, :country
  json.url parent_url(parent, format: :json)
end
