json.array!(@requirements) do |requirement|
  json.extract! requirement, :id, :name, :status, :required, :remarks
  json.url requirement_url(requirement, format: :json)
end
