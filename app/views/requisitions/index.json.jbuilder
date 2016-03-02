json.array!(@requisitions) do |requisition|
  json.extract! requisition, :id, :request_by, :request_date, :project_name, :delivery_date, :purpose
  json.url requisition_url(requisition, format: :json)
end
