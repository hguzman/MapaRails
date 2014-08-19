json.array!(@class_vehicles) do |class_vehicle|
  json.extract! class_vehicle, :id, :clase
  json.url class_vehicle_url(class_vehicle, format: :json)
end
