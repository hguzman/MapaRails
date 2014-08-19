json.array!(@insurers) do |insurer|
  json.extract! insurer, :id, :nom_aseguradora
  json.url insurer_url(insurer, format: :json)
end
