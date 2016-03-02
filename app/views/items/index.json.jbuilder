json.array!(@items) do |item|
  json.extract! item, :id, :name, :last_purchase_rate, :last_purchase_amount, :estimated_purchase_rate, :estimated_purchase_amount, :requisition_id
  json.url item_url(item, format: :json)
end
