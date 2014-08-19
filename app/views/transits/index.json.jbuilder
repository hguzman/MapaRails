json.array!(@transits) do |transit|
  json.extract! transit, :id, :transito
  json.url transit_url(transit, format: :json)
end
