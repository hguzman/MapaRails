json.array!(@streets) do |street|
  json.extract! street, :id, :accident_id, :via, :geometria, :utilizacion, :calzadas, :carriles, :superficie, :controles, :visibilidad
  json.url street_url(street, format: :json)
end
