json.array!(@checklists) do |checklist|
  json.extract! checklist, :id, :status, :remarks
  json.url checklist_url(checklist, format: :json)
end
