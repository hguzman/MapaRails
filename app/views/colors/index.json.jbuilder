json.array!(@colors) do |color|
  json.extract! color, :id, :color
  json.url color_url(color, format: :json)
end
