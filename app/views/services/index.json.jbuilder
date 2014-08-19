json.array!(@services) do |service|
  json.extract! service, :id, :servicio
  json.url service_url(service, format: :json)
end
