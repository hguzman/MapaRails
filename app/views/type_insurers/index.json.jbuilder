json.array!(@type_insurers) do |type_insurer|
  json.extract! type_insurer, :id, :tipo_seguro
  json.url type_insurer_url(type_insurer, format: :json)
end
