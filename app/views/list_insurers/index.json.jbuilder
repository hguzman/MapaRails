json.array!(@list_insurers) do |list_insurer|
  json.extract! list_insurer, :id, :insurer_id, :type_insurer_id, :poliza, :vencimiento
  json.url list_insurer_url(list_insurer, format: :json)
end
